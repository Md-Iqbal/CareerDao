# Generated by Django 3.2.9 on 2022-06-01 07:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app_homeApi', '0009_news_is_featured'),
    ]

    operations = [
        migrations.AlterField(
            model_name='news',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to='news/'),
        ),
    ]