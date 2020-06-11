# Generated by Django 3.0.5 on 2020-05-14 16:52

from django.db import migrations, models
import django_countries.fields


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0002_auto_20200514_2134'),
    ]

    operations = [
        migrations.RenameField(
            model_name='address',
            old_name='UserName',
            new_name='user',
        ),
        migrations.AlterField(
            model_name='address',
            name='address_type',
            field=models.CharField(choices=[('B', 'Billing'), ('S', 'Shipping')], max_length=1),
        ),
        migrations.AlterField(
            model_name='address',
            name='country',
            field=django_countries.fields.CountryField(max_length=2),
        ),
    ]
