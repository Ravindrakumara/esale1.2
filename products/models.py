
from django.db import models
from django.conf import settings
from django_countries.fields import CountryField
from django.shortcuts import reverse
from django.urls import reverse
# Create your models here.

ADDRESS_CHOICES = (
    ('B', 'Billing'),
    ('S', 'Shipping'),
)


class Brands(models.Model):
   Brand_Name = models.CharField(max_length=100)
  

class Categories(models.Model):
   Category_Name = models.CharField(max_length=100)

class item(models.Model):

    title = models.CharField(max_length=80)
    Image = models.ImageField(upload_to='pics')
    Price = models.DecimalField(max_digits=100,decimal_places=2)
    Discount = models.DecimalField(max_digits=100,decimal_places=2)
    slug = models.SlugField(max_length=80)
    #Brand_Name = models.CharField(max_length=80)
    #Category_Name = models.CharField(max_length=80)
    Colour = models.CharField(max_length=80)
    Size = models.CharField(max_length=80)
    Weight = models.FloatField()
    Discription = models.TextField(max_length=80)
    Modify_date = models.DateTimeField()
    Expiry_date = models.DateTimeField()
    Create_date = models.DateTimeField(auto_now_add=True)

    def __str__(self): 
        return self.title

    def get_absolute_url(self):
        return reverse("products:pro", kwargs={
            'slug': self.slug
        })

    def get_add_to_cart_url(self):
        return reverse("products:add-to-cart", kwargs={
          'slug': self.slug
          })

    def get_remove_from_cart_url(self):
        return reverse("products:remove-from-cart", kwargs={
            'slug': self.slug
        })
    

class Registration(models.Model):

   # Logo = models.ImageField(upload_to='pics')
    Sitemoto = models.CharField(max_length=100)
    Phonenumber = models.CharField(max_length=100)
    Email = models.EmailField()
    Address = models.TextField(max_length=150)
    Facebook = models.URLField()
    Twitter = models.URLField()
    Googlepls = models.URLField()
    linkedin = models.URLField()

class User(models.Model):
   FirstName = models.CharField(max_length=100)
   LastName = models.CharField(max_length=100)
   UserName = models.OneToOneField(
       settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
   Email = models.EmailField()
   Phonenumber = models.TextField()
   Password = models.CharField(max_length=50)
   RePassword = models.CharField(max_length=50)




class Address(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL,
                             on_delete=models.CASCADE)
    street_address = models.CharField(max_length=100)
    apartment_address = models.CharField(max_length=100)
    country = CountryField(multiple=False)
    zip = models.CharField(max_length=100)
    address_type = models.CharField(max_length=1, choices=ADDRESS_CHOICES)
    default = models.BooleanField(default=False)

    def __str__(self):
        return self.user.username

    class Meta:
        verbose_name_plural = 'Addresses'


class OrderItem(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL,
                             on_delete=models.CASCADE)
    ordered = models.BooleanField(default=False)
    iteml = models.ForeignKey(item, on_delete=models.CASCADE)
    quantity = models.IntegerField(default=1)

    def __str__(self):
        return f"{self.quantity} of {self.iteml.title}"

    def get_total_item_price(self):
        return self.quantity * self.iteml.Price

    def get_total_discount_item_price(self):
        return self.quantity * self.iteml.Discount

    def get_amount_saved(self):
        return self.get_total_item_price() - self.get_total_discount_item_price()

    def get_final_price(self):
        if self.iteml.Discount:
            return self.get_total_discount_item_price()
        return self.get_total_item_price()


class Order(models.Model):
 
  user = models.ForeignKey(settings.AUTH_USER_MODEL,
                             on_delete=models.CASCADE)
  items = models.ManyToManyField(OrderItem)
  start_date = models.DateTimeField(auto_now_add=True)
  ordered_date = models.DateTimeField()
  ordered = models.BooleanField(default=False)
  shipping_address = models.ForeignKey(
        'Address', related_name='shipping_address', on_delete=models.SET_NULL, blank=True, null=True)
  billing_address = models.ForeignKey(
        'Address', related_name='billing_address', on_delete=models.SET_NULL, blank=True, null=True)
  payment = models.ForeignKey(
        'Payment', on_delete=models.SET_NULL, blank=True, null=True)
  coupon = models.ForeignKey(
        'Coupon', on_delete=models.SET_NULL, blank=True, null=True)
  being_delivered = models.BooleanField(default=False)
  received = models.BooleanField(default=False)
  refund_requested = models.BooleanField(default=False)
  refund_granted = models.BooleanField(default=False)

  def __str__(self):
        return self.user.username

#-----------------------------
def get_total(self):
        total = 0
        for order_item in self.items.all():
            total += order_item.get_final_price()
        if self.coupon:
            total -= self.coupon.amount
        return total

#---------------------------------

class UserProfile(models.Model):
    user = models.OneToOneField(
        settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    stripe_customer_id = models.CharField(max_length=50, blank=True, null=True)
    one_click_purchasing = models.BooleanField(default=False)

    def __str__(self):
        return self.user.username




class Payment(models.Model):
    stripe_charge_id = models.CharField(max_length=50)
    user = models.ForeignKey(settings.AUTH_USER_MODEL,
                             on_delete=models.SET_NULL, blank=True, null=True)
    amount = models.FloatField()
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.user.username


class Coupon(models.Model):
    code = models.CharField(max_length=15)
    amount = models.FloatField()

    def __str__(self):
        return self.code


class Refund(models.Model):
    order = models.ForeignKey(Order, on_delete=models.CASCADE)
    reason = models.TextField()
    accepted = models.BooleanField(default=False)
    email = models.EmailField()

    def __str__(self):
        return f"{self.pk}"


def userprofile_receiver(sender, instance, created, *args, **kwargs):
    if created:
        userprofile = UserProfile.objects.create(user=instance)


#post_save.connect(userprofile_receiver, sender=settings.AUTH_USER_MODEL)

