from django.contrib import admin
from.models import Registration
from.models import item
from.models import Brands
from.models import Categories
from.models import User,Address,OrderItem,Order,UserProfile
from.models import Payment, Coupon, Refund

# Register your models here.
admin.site.register(Registration)
admin.site.register(item)
admin.site.register(Brands)
admin.site.register(Categories)
admin.site.register(User)
admin.site.register(Address)

admin.site.register(OrderItem)
admin.site.register(Order)
admin.site.register(UserProfile)

admin.site.register(Payment)
admin.site.register(Coupon)
admin.site.register(Refund)
