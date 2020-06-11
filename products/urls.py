from django.conf import settings
from django.conf.urls.static import static
from django.urls import path ,reverse
from products.views import (
	HomeView, ProductView, 
	ShopView, add_to_cart ,CheckoutView, 
	login, sign_up, AddCouponView, 
	OrderSummaryView, 
	remove_from_cart,
	remove_single_item_from_cart
	)
#from.import views


app_name='products'

urlpatterns = [
   path('',HomeView.as_view(), name='home'),
   path('product',ShopView.as_view(), name='product'),
   path('order-summary/', OrderSummaryView.as_view(), name='order-summary'),
   path('product/<slug>/',ProductView.as_view(), name='pro'), # Here this detail view is work
   path('add-to-cart/<slug>/', add_to_cart, name='add-to-cart'),
   path('add-coupon/', AddCouponView.as_view(), name='add-coupon'),
   path('checkout/', CheckoutView.as_view(), name='checkout'),
   path('remove-from-cart/<slug>/', remove_from_cart, name='remove-from-cart'),
   path('remove-item-from-cart/<slug>/', remove_single_item_from_cart,
         name='remove-single-item-from-cart'),
   #
   path('go',login.as_view(), name='log'),
   path('sign-up',sign_up.as_view(), name='cart-list'),
]

