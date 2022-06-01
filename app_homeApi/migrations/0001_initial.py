# Generated by Django 3.2.9 on 2022-05-14 13:12

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Company',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('username', models.CharField(db_index=True, max_length=25, unique=True)),
                ('email', models.EmailField(db_index=True, max_length=30, unique=True)),
                ('logo', models.ImageField(default='images/default.png', upload_to='images/')),
                ('image', models.ImageField(default='images/default.png', upload_to='images/')),
                ('is_verified', models.BooleanField(default=False)),
                ('company_name', models.CharField(blank=True, max_length=25, null=True)),
                ('company_description', models.TextField(blank=True, max_length=500, null=True)),
                ('company_address', models.CharField(blank=True, max_length=25, null=True)),
                ('company_phone', models.CharField(blank=True, max_length=25, null=True)),
                ('company_website', models.CharField(blank=True, max_length=25, null=True)),
                ('country', models.CharField(blank=True, max_length=50, null=True)),
                ('user', models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='company', to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='ProjectManager',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('username', models.CharField(db_index=True, max_length=25, unique=True)),
                ('email', models.EmailField(db_index=True, max_length=30, unique=True)),
                ('image', models.ImageField(default='images/default.png', upload_to='images/')),
                ('is_verified', models.BooleanField(default=False)),
                ('first_name', models.CharField(blank=True, max_length=25, null=True)),
                ('last_name', models.CharField(blank=True, max_length=25, null=True)),
                ('phone', models.CharField(blank=True, max_length=25, null=True)),
                ('address', models.CharField(blank=True, max_length=25, null=True)),
                ('occupation', models.CharField(blank=True, max_length=25, null=True)),
                ('document_name', models.CharField(blank=True, max_length=25, null=True)),
                ('document_number', models.CharField(blank=True, max_length=25, null=True)),
                ('document_image', models.ImageField(blank=True, null=True, upload_to='documents/')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('company', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='app_homeApi.company')),
                ('user', models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='project_manager', to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Freelancer',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('username', models.CharField(db_index=True, max_length=25, unique=True)),
                ('email', models.EmailField(db_index=True, max_length=30, unique=True)),
                ('image', models.ImageField(default='images/default.png', upload_to='images/')),
                ('is_verified', models.BooleanField(default=False)),
                ('first_name', models.CharField(blank=True, max_length=25, null=True)),
                ('last_name', models.CharField(blank=True, max_length=25, null=True)),
                ('phone', models.CharField(blank=True, max_length=25, null=True)),
                ('address', models.CharField(blank=True, max_length=25, null=True)),
                ('occupation', models.CharField(blank=True, max_length=25, null=True)),
                ('document_name', models.CharField(blank=True, max_length=25, null=True)),
                ('document_number', models.CharField(blank=True, max_length=25, null=True)),
                ('document_image', models.ImageField(blank=True, null=True, upload_to='documents/')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('company', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='app_homeApi.company')),
                ('user', models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='freelancer', to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]