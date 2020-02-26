from django.shortcuts import render, redirect, get_object_or_404
from django.http import HttpResponse
from .models import *
from django.contrib import auth
from django.contrib.auth import login, logout
from django.contrib.auth.decorators import login_required
from django.core.files.storage import FileSystemStorage
import datetime

def welcome(request):
    return render(request, 'admission/welcome.html')


# student creation page
@login_required(login_url='/admission/login/')
def stu_adm_form(request):
    if request.method == "POST":
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        student_class = request.POST['student_class']
        date_of_birth = request.POST['date_of_birth']
        acadamic_year = request.POST['acadamic_year']
        gender = request.POST['gender']
        student_image = request.FILES['student_image']
        fs = FileSystemStorage()
        file_name = fs.save(student_image.name, student_image)
        url = fs.url(file_name)
        print(url)
        student_set = StudentInfo.objects.create(first_name=first_name, last_name=last_name, student_class=student_class,
                                                 date_of_birth=date_of_birth, acadamic_year=acadamic_year, gender=gender,
                                                 student_image=student_image)
        student_set.save()
        father_name = request.POST['father_name']
        mother_name = request.POST['mother_name']
        contact_info = request.POST['contact_info']
        email_id = request.POST['email_id']
        address1 = request.POST['address1']
        address2 = request.POST['address2']
        city = request.POST['city']
        state = request.POST['state']
        country_code = request.POST['country_code']
        postal_code = request.POST['postal_code']
        parent_set = StudentParentInfo(student=student_set, father_name=father_name, mother_name=mother_name, contact_info=contact_info,
                                       address1=address1, email_id=email_id, address2=address2, city=city, state=state, country_code=country_code, postal_code=postal_code)
        parent_set.save()
        return redirect('/admission/student/list/')
    if request.method == "GET":
        return render(request, 'stu_adm_form.html')

# teacher creation page
@login_required(login_url='/admission/login/')
def teacher_view(request):
    if request.method == "POST":
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        gender = request.POST['gender']
        date_of_birth = request.POST['date_of_birth']
        qualifications = request.POST['qualifications']
        subject_teaches = request.POST['subject_teaches']
        contact_num = request.POST['contact_num']
        email_id = request.POST['email_id']
        address = request.POST['address']
        city = request.POST['city']
        state = request.POST['state']
        country = request.POST['country']
        postal_code = request.POST['postal_code']
        teacher_obj = TeacherInfo(first_name=first_name, last_name=last_name, gender=gender, date_of_birth=date_of_birth,
                                  qualifications=qualifications, subject_teaches=subject_teaches,
                                  contact_num=contact_num, email_id=email_id, address=address, city=city, state=state, country=country, postal_code=postal_code)
        teacher_obj.save()

        return redirect('/admission/teacher/list/')
    if request.method == "GET":
        return render(request, 'teacher_info.html')

# student's list
@login_required(login_url='/admission/login/')
def student_page(request):
    if request.method == 'GET':
        parent_set = StudentParentInfo.objects.all()
        context = {'parent_set': parent_set}
        return render(request, 'num_students.html', context)

# teacher's list
@login_required(login_url='/admission/login/')
def teacher_page(request):
    if request.method == 'GET':
        teacher_set = TeacherInfo.objects.all()
        context = {'teacher_set': teacher_set}
        return render(request, 'num_teacher.html', context)

# student's edit page
@login_required(login_url='/admission/login/')
def student_edit(request, pk):
    parent = get_object_or_404(StudentParentInfo, pk=pk)
    student = get_object_or_404(StudentInfo, pk=pk)
    if request.method == "POST":
        student.first_name = request.POST.get('first_name')
        student.last_name = request.POST.get('last_name')
        student.student_class = request.POST.get('student_class')
        student.acadamic_year = request.POST.get('acadamic_year')
        student.date_of_birth = request.POST.get('date_of_birth')
        student.student_image = request.FILES.get('student_image')
        # print(request.POST)
        student.save()
        parent.father_name = request.POST.get('father_name')
        parent.mother_name = request.POST.get('mother_name')
        parent.contact_info = request.POST.get('contact_info')
        parent.email_id = request.POST.get('email_id')
        parent.address1 = request.POST.get('address1')
        parent.address2 = request.POST.get('address2')
        parent.city = request.POST.get('city')
        parent.state = request.POST.get('state')
        parent.country_code = request.POST.get('country_code')
        parent.postal_code = request.POST.get('postal_code')
        parent.save()
        print(parent.student_id)
        return redirect('/admission/student/list/', pk=parent.pk)
    if request.method == 'GET':
        parent_set = StudentParentInfo.objects.get(pk=pk)
        context = {'parent_set': parent_set}
        return render(request, 'stu_edit.html', context)
    else:
        return render(request, 'admission/student/register/')


# student delete page
@login_required(login_url='/admission/login/')
def student_delete(request, pk):
    if request.method == "GET":
        print("inside student delete")
        parent = get_object_or_404(StudentParentInfo, pk=pk)
        parent.student.delete()
        return redirect('/admission/student/list/')


#teacher edit page
@login_required(login_url='/admission/login/')
def teacher_edit(request, pk):
    teacher = get_object_or_404(TeacherInfo, pk=pk)
    if request.method == 'POST':
        teacher.first_name = request.POST.get('first_name')
        teacher.last_name = request.POST.get('last_name')
        teacher.gender = request.POST.get('gender')
        teacher.date_of_birth = request.POST.get('date_of_birth')
        teacher.qualifications = request.POST.get('qualifications')
        teacher.subject_teaches = request.POST.get('subject_teaches')
        teacher.contact_num = request.POST.get('contact_num')
        teacher.email_id = request.POST.get("email_id")
        teacher.address = request.POST.get('address')
        teacher.city = request.POST.get('city')
        teacher.state = request.POST.get('state')
        teacher.country = request.POST.get('country')
        teacher.postal_code = request.POST.get('postal_code')
        teacher.save()
        print('Birthday', teacher.date_of_birth)
        return redirect('/admission/teacher/list/', pk=teacher.pk)
    if request.method == "GET":
        teacher_set = TeacherInfo.objects.get(pk=pk)
        context = {'teacher_set': teacher_set}
        return render(request, 'teach_edit.html', context)
    else:
        return render(request, '/admission/teacher/register/')

# teacher delete page
@login_required(login_url='/admission/login/')
def teacher_delete(request, pk):
    if request.method == "GET":
        teacher = get_object_or_404(TeacherInfo, pk=pk)
        teacher.delete()
        return redirect('/admission/teacher/list/')

# admin login
def admin_login(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = auth.authenticate(username=username, password=password)
        if user is not None:
            login(request, user)
            return redirect('/admission/homepage/')
        else:
            return render(request, 'admin_login.html', {'error_ message': 'invalid username or password'})
    else:
        return render(request, 'admin_login.html')

# admin logout page
def admin_logout(request):
    auth.logout(request)
    return redirect('/admission/login/')

# homepage
@login_required(login_url='/admission/login/')
def index(request):
    no_of_students = StudentInfo.objects.all().count()
    no_of_teachers = TeacherInfo.objects.all().count()
    high_score = Results.objects.all()
    student_marks = []
    student_names = []
    for marks in high_score:
        student_marks.append(marks.total_marks())
        student_names.append(marks.student.first_name)
    student_scores = dict(zip(student_names, student_marks))
    topper_name = max(student_scores, key=student_scores.get)
    topper_score = max(student_scores.values())
    context = {'no_of_students': no_of_students,
               'no_of_teachers': no_of_teachers,
               'topper_name': topper_name,
               'topper_score': topper_score}
    return render(request, 'index.html', context)

# student marks page
@login_required(login_url='/admission/login/')
def student_marks(request):
    if request.method == "POST":
        student = StudentInfo.objects.get(id=int(request.POST['student_name']))
        telugu = request.POST['telugu']
        hindi = request.POST['hindi']
        english = request.POST['english']
        maths = request.POST['maths']
        science = request.POST['science']
        social = request.POST['social']
        semester = request.POST['semester']
        obj_marks = Results.objects.create(student=student, telugu=telugu, hindi=hindi, english=english, maths=maths, science=science, social=social, semester=semester)
        obj_marks.save()
        return redirect('/admission/marks/list/')
    if request.method == 'GET':
        student_list = StudentInfo.objects.all()
        context = {"student_list": student_list}
        return render(request, 'student_marks_page.html', context)


#student marks list
@login_required(login_url='/admission/login/')
def marks_list(request):
    if request.method == 'GET':
        marks_set = Results.objects.all()
        context = {'marks_set': marks_set}
        return render(request, 'marks_list.html', context)

#student marks edit page
@login_required(login_url='/admission/login/')
def student_marks_edit(request, pk):
    marks = get_object_or_404(Results, pk=pk)
    if request.method == "POST":
        marks.telugu = request.POST.get('telugu')
        marks.hindi = request.POST.get('hindi')
        marks.english = request.POST.get('english')
        marks.maths = request.POST.get('maths')
        marks.science = request.POST.get('science')
        marks.social = request.POST.get('social')
        marks.semester = request.POST.get('semester')
        marks.save()
        return redirect('/admission/marks/list/')
    if request.method == "GET":
        marks_set = Results.objects.get(pk=pk)
        context = {'marks_set': marks_set}
        return render(request, 'student_marks_edit.html', context)

# student class wise result list
@login_required(login_url='/admission/login/')
def student_filter(request, id):
    if request.method == 'GET':
        marks_set = Results.objects.filter(student__student_class=id)
        class_highest = []
        student_name = []
        for num in marks_set:
            class_highest.append(num.total_marks())
            student_name.append(num.student.first_name)
        class_highest_score = dict(zip(student_name, class_highest))
        class_topper = max(class_highest_score, key=class_highest_score.get)
        class_topper_name = max(class_highest_score.values())
        print(class_topper)
        print(class_topper_name)
        context = {'marks_set': marks_set,
                   'class_topper': class_topper,
                   'class_topper_name': class_topper_name}
        return render(request, 'marks_list.html', context)
