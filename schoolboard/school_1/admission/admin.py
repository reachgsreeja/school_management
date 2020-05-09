from django.contrib import admin
from .models import *
# Register your models here.
admin.site.register(StudentInfo)
admin.site.register(StudentParentInfo)
admin.site.register(TeacherInfo)
admin.site.register(Results)
admin.site.register(Student_Attendance)

