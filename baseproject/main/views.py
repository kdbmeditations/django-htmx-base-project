from django.shortcuts import render


def index(request):
    if request.htmx:
        print("Received HTMX request.")
        return render(request, "partial.html")
    else:
        print("Received non-HTMX request.")
        return render(request, "index.html")
