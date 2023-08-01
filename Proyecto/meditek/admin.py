from django.contrib import admin
from meditek.models import set_point, control_value, process_value, estado, tipo_proceso, process_status, ciclo_trabajo, ref_voltaje


@admin.register(set_point)
class SetPointAdmin(admin.ModelAdmin):
    list_display = ('valor', 'fecha')
    list_filter = ('fecha',)
    date_hierarchy = 'fecha'
    search_fields = ('fecha',)

@admin.register(control_value)
class ControlValueAdmin(admin.ModelAdmin):
    list_display = ('valor', 'fecha')
    list_filter = ('fecha',)
    date_hierarchy = 'fecha'
    search_fields = ('fecha',)

@admin.register(process_value)
class ProcessValueAdmin(admin.ModelAdmin):
    list_display = ('valor', 'fecha')
    list_filter = ('fecha',)
    date_hierarchy = 'fecha'
    search_fields = ('fecha',)

@admin.register(estado)
class EstadoAdmin(admin.ModelAdmin):
    list_display = ('valor', 'fecha')
    list_filter = ('fecha',)
    date_hierarchy = 'fecha'
    search_fields = ('fecha',)

@admin.register(tipo_proceso)
class TipoProcesoAdmin(admin.ModelAdmin):
    list_display = ('valor', 'fecha')
    list_filter = ('fecha',)
    date_hierarchy = 'fecha'
    search_fields = ('fecha',)

@admin.register(process_status)
class ProcessStatusAdmin(admin.ModelAdmin):
    list_display = ('valor', 'fecha')
    list_filter = ('fecha',)
    date_hierarchy = 'fecha'
    search_fields = ('fecha',)

@admin.register(ciclo_trabajo)
class CicloTrabajoAdmin(admin.ModelAdmin):
    list_display = ('valor', 'fecha')
    list_filter = ('fecha',)
    date_hierarchy = 'fecha'
    search_fields = ('fecha',)


class RefVoltajeAdmin(admin.ModelAdmin):
    list_display = ("valor", "fecha")
    list_filter = ("fecha",)  # Aquí especificamos el campo 'fecha' para filtrar
    date_hierarchy = "fecha"  # Esto permite una jerarquía de fechas en la barra lateral
    search_fields = ("valor",)  # Agregamos campos por los cuales queremos realizar búsquedas

admin.site.register(ref_voltaje, RefVoltajeAdmin)
# Register your models here.
