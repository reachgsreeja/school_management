# Generated by Django 2.2.7 on 2020-02-25 10:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('admission', '0008_auto_20200225_0441'),
    ]

    operations = [
        migrations.AlterField(
            model_name='studentinfo',
            name='student_image',
            field=models.ImageField(blank=True, null=True, upload_to=''),
        ),
    ]
