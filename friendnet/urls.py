from django.contrib import admin
from django.urls import include, path

from django.views.static import serve
from django.urls import path, re_path

urlpatterns = [
    path("admin/", admin.site.urls),
    path("", include("network.urls")),
   
]
