from django.conf import settings
from django.contrib import messages
from django.shortcuts import render, get_object_or_404
from django.core.exceptions import ObjectDoesNotExist
from django.shortcuts import redirect
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.http import HttpResponse,HttpResponseRedirect
from django.utils import timezone
from .forms import CheckoutForm, CouponForm
from.models import item, Registration,Order,OrderItem, Address,Coupon
from django.views.generic import ListView, DetailView, TemplateView,View
from django.urls import reverse


class HomeView(ListView):
	model = item
	#model = Registration
	template_name = "index.html"

class ShopView(ListView):
	model = item
	paginate_by = 3+3
	template_name = "shop.html"

class ProductView(DetailView):
    model = item
    template_name = "product-details.html"   


@login_required
def add_to_cart(request, slug):
    iteml = get_object_or_404(item, slug=slug)
    order_item, created = OrderItem.objects.get_or_create(
        iteml=iteml,
        user=request.user,
        ordered=False
    )
    order_qs = Order.objects.filter(user=request.user, ordered=False)
    if order_qs.exists():
        order = order_qs[0]
        # check if the order item is in the order
        if order.items.filter(iteml__slug=iteml.slug).exists():
            order_item.quantity += 1
            order_item.save()
            messages.info(request, "This item quantity was updated.")
            return redirect("products:order-summary")
        else:
            order.items.add(order_item)
            messages.info(request, "This item was added to your cart.")
            return redirect("products:order-summary")
    else:
        ordered_date = timezone.now()
        order = Order.objects.create(
            user=request.user, ordered_date=ordered_date)
        order.items.add(order_item)
        messages.info(request, "This item was added to your cart.")
        return redirect("products:order-summary")


print(add_to_cart)

class CheckoutView(View): 
    def get(self, *args, **kwargs):
        try:
            order = Order.objects.get(user=self.request.user, ordered=False)
            form = CheckoutForm()
            context = {
                'form': form,
                'couponform': CouponForm(),
                'order': order,
                'DISPLAY_COUPON_FORM': True
            }

            shipping_address_qs = Address.objects.filter(
                user=self.request.user,
                address_type='S',
                default=True
            )
            if shipping_address_qs.exists():
                context.update(
                    {'default_shipping_address': shipping_address_qs[0]})

            billing_address_qs = Address.objects.filter(
                user=self.request.user,
                address_type='B',
                default=True
            )
            if billing_address_qs.exists():
                context.update(
                    {'default_billing_address': billing_address_qs[0]})

            return render(self.request, "checkout.html", context)
        except ObjectDoesNotExist:
            messages.info(self.request, "You do not have an active order")
            return redirect("products:checkout")


class login(TemplateView):
  template_name = 'login.html'

class sign_up(TemplateView):
  template_name = 'signup.html'

#-------------------------------------------
class OrderSummaryView(LoginRequiredMixin, View):
    def get(self, *args, **kwargs):
        try:
            order = Order.objects.get(user=self.request.user, ordered=False)
            context = {
                'object': order
            }
            return render(self.request, 'order_summary.html', context)
        except ObjectDoesNotExist:
            messages.warning(self.request, "You do not have an active order")
            return redirect("/")

@login_required
def remove_from_cart(request, slug):
    iteml = get_object_or_404(item, slug=slug)
    order_qs = Order.objects.filter(
        user=request.user,
        ordered=False
    )
    if order_qs.exists():
        order = order_qs[0]
        # check if the order item is in the order
        if order.items.filter(iteml__slug=iteml.slug).exists():
            order_item = OrderItem.objects.filter(
                iteml=iteml,
                user=request.user,
                ordered=False
            )[0]
            order.items.remove(order_item)
            order_item.delete()
            messages.info(request, "This item was removed from your cart.")
            return redirect("products:order-summary")
        else:
            messages.info(request, "This item was not in your cart")
            return redirect("products:product", slug=slug)
    else:
        messages.info(request, "You do not have an active order")
        return redirect("products:product", slug=slug)


@login_required
def remove_single_item_from_cart(request, slug):
    iteml = get_object_or_404(item, slug=slug)
    order_qs = Order.objects.filter(
        user=request.user,
        ordered=False
    )
    if order_qs.exists():
        order = order_qs[0]
        # check if the order item is in the order
        if order.items.filter(iteml__slug=iteml.slug).exists():
            order_item = OrderItem.objects.filter(
                iteml=iteml,
                user=request.user,
                ordered=False
            )[0]
            if order_item.quantity > 1:
                order_item.quantity -= 1
                order_item.save()
            else:
                order.items.remove(order_item)
            messages.info(request, "This item quantity was updated.")
            return redirect("products:order-summary")
        else:
            messages.info(request, "This item was not in your cart")
            return redirect("products:product", slug=slug)
    else:
        messages.info(request, "You do not have an active order")
        return redirect("products:product", slug=slug)

class AddCouponView(View):
    def post(self, *args, **kwargs):
        form = CouponForm(self.request.POST or None)
        if form.is_valid():
            try:
                code = form.cleaned_data.get('code')
                order = Order.objects.get(
                    user=self.request.user, ordered=False)
                order.coupon = get_coupon(self.request, code)
                order.save()
                messages.success(self.request, "Successfully added coupon")
                return redirect("products:checkout")
            except ObjectDoesNotExist:
                messages.info(self.request, "You do not have an active order")
                return redirect("products:checkout")

def get_coupon(request, code):
    try:
        coupon = Coupon.objects.get(code=code)
        return coupon
    except ObjectDoesNotExist:
        messages.info(request, "This coupon does not exist")
        return redirect("products:checkout")


