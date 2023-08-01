from datetime import timezone
from django.db import models
from django.utils import timezone

class set_point(models.Model):
    valor=models.FloatField()
    fecha=models.DateField(default=timezone.now)
    def __float__(self):
        return self.valor


class control_value(models.Model):
    valor=models.FloatField()
    fecha=models.DateField(default=timezone.now)

    def __float__(self):
        return self.valor

class process_value(models.Model):
    valor=models.FloatField()
    fecha=models.DateField(default=timezone.now)

    def __float__(self):
        return self.valor

class estado(models.Model):
    valor=models.FloatField()
    fecha=models.DateField(default=timezone.now)

    def __float__(self):
        return self.valor

class tipo_proceso(models.Model):
    valor=models.FloatField()
    fecha=models.DateField(default=timezone.now)

    def __float__(self):
        return self.valor

class process_status(models.Model):
    valor=models.FloatField()
    fecha=models.DateField(default=timezone.now)

    def __float__(self):
        return self.valor

class ciclo_trabajo(models.Model):
    valor=models.FloatField()
    fecha=models.DateField(default=timezone.now)

    def __float__(self):
        return self.valor

class ref_voltaje(models.Model):
    valor=models.FloatField()
    fecha=models.DateField(default=timezone.now)

    def __float__(self):
        return self.valor









# Create your models here.
