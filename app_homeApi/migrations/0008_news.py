# Generated by Django 3.2.9 on 2022-05-31 23:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app_homeApi', '0007_auto_20220601_0303'),
    ]

    operations = [
        migrations.CreateModel(
            name='News',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('title', models.CharField(blank=True, max_length=50, null=True)),
                ('description', models.TextField(blank=True, max_length=1500, null=True)),
                ('qoute', models.CharField(blank=True, max_length=200, null=True)),
                ('image', models.ImageField(blank=True, null=True, upload_to='images/')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
            ],
        ),
    ]