# Generated by Django 2.2.7 on 2020-02-26 07:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('admission', '0012_auto_20200226_0151'),
    ]

    operations = [
        migrations.AlterField(
            model_name='results',
            name='semester',
            field=models.CharField(blank=True, choices=[('quarterly', 'Quarterly Exam'), ('half_yearly', 'Half Yearly Exam'), ('yearly', 'Yearly Exam')], max_length=100),
        ),
    ]