from django.contrib import admin
from django.urls import include, path

from django.views.static import serve
from django.conf.urls import url

urlpatterns = [
    path("admin/", admin.site.urls),
    path("", include("network.urls")),
   
]
