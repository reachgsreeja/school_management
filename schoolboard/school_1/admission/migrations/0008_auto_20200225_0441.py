# Generated by Django 2.2.7 on 2020-02-25 09:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('admission', '0007_auto_20200225_0437'),
    ]

    operations = [

        migrations.AlterField(
            model_name='studentinfo',
            name='student_image',
            field=models.ImageField(blank=True, upload_to='student_profile_image'),
        ),
    ]