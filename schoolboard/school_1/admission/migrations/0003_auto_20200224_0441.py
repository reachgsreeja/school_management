# Generated by Django 2.2.7 on 2020-02-24 09:41

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('admission', '0002_auto_20200223_0432'),
    ]

    operations = [
        migrations.AlterField(
            model_name='results',
            name='student',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='admission.StudentInfo'),
        ),
    ]
