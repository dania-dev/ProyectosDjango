# Generated by Django 4.2.3 on 2023-07-31 04:00

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('meditek', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='ciclo_trabajo',
            name='fecha',
            field=models.DateField(default=django.utils.timezone.now),
        ),
        migrations.AddField(
            model_name='control_value',
            name='fecha',
            field=models.DateField(default=django.utils.timezone.now),
        ),
        migrations.AddField(
            model_name='estado',
            name='fecha',
            field=models.DateField(default=django.utils.timezone.now),
        ),
        migrations.AddField(
            model_name='process_status',
            name='fecha',
            field=models.DateField(default=django.utils.timezone.now),
        ),
        migrations.AddField(
            model_name='process_value',
            name='fecha',
            field=models.DateField(default=django.utils.timezone.now),
        ),
        migrations.AddField(
            model_name='ref_voltaje',
            name='fecha',
            field=models.DateField(default=django.utils.timezone.now),
        ),
        migrations.AddField(
            model_name='set_point',
            name='fecha',
            field=models.DateField(default=django.utils.timezone.now),
        ),
        migrations.AddField(
            model_name='tipo_proceso',
            name='fecha',
            field=models.DateField(default=django.utils.timezone.now),
        ),
    ]