# Generated by Django 3.2.9 on 2022-05-14 13:40

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app_authApi', '0002_auto_20220510_2252'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='user',
            name='is_verified',
        ),
    ]