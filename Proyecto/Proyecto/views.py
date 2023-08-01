from django.http import HttpRequest
from django.http import HttpResponse
from django.shortcuts import render
from django.template import Template,Context
from meditek.models import set_point, control_value, process_value, estado, tipo_proceso, process_status, ciclo_trabajo, ref_voltaje

def plantilla(request):
    doc_externo=open("C:/Users/DELL/Documents/ProyectosDjango/Proyecto/Proyecto//templates/plantilla.html")
    plt=Template(doc_externo.read())

    doc_externo.close()
    ctx= Context()

    documento=plt.render(ctx)

    return HttpResponse(documento)

def plantilla2(request):
    return render(request, 'plantilla2.html')


def mostrar_datos(request):
    set_points = set_point.objects.last()
    print("Set Points:", set_points)
    control_values = control_value.objects.last()
    process_values = process_value.objects.last()
    estados = estado.objects.last()
    tipo_procesos = tipo_proceso.objects.last()
    process_statuses = process_status.objects.last()
    ciclo_trabajos = ciclo_trabajo.objects.last()
    ref_voltajes = ref_voltaje.objects.last()


    return render(request, 'plantilla.html', {
        'set_points': set_points,
        'control_values': control_values,
        'process_values': process_values,
        'estados': estados,
        'tipo_procesos': tipo_procesos,
        'process_statuses': process_statuses,
        'ciclo_trabajos': ciclo_trabajos,
        'ref_voltajes': ref_voltajes,
    })

