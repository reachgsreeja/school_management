from django.urls import path
from . import views


urlpatterns =[
    path('', views.welcome, name='welcome'),
    path('student/register/', views.stu_adm_form, name='admission_form'),
    path('teacher/register/', views.teacher_view, name='teacher_form'),
    path('student/list/', views.student_page, name='student_page'),
    path('teacher/list/', views.teacher_page, name='teacher_page'),
    path('student/edit/<int:pk>/', views.student_edit, name='edit_student'),
    path('student/delete/<int:pk>/', views.student_delete, name='delete_student'),
    path('teacher/edit/<int:pk>/', views.teacher_edit, name='edit_teacher'),
    path('teacher/delete/<int:pk>/', views.teacher_delete, name='delete_teacher'),
    path('login/', views.admin_login, name='admin_login'),
    path('logout/', views.admin_logout, name='admin_logout'),
    path('homepage/', views.index, name='index'),
    path('student/marks/', views.student_marks, name='student_marks'),
    path('student/marks/edit/<int:pk>/', views.student_marks_edit, name='student_edit'),
    path('marks/list/', views.marks_list, name='marks_list'),
    path('marks/list/<int:id>/', views.student_filter, name='student_filter'),

]