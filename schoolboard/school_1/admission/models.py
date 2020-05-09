from django.db import models
from datetime import datetime
# Create your models here.

class StudentInfo(models.Model):
    first_name = models.CharField(max_length=255)
    last_name = models.CharField(max_length=255)
    student_class = models.PositiveIntegerField()
    date_of_birth = models.DateField(null=False)
    acadamic_year = models.PositiveIntegerField(null=True, blank=False)
    gender = models.CharField(max_length=50)
    student_image = models.ImageField(null=True, blank=True)

    def __str__(self):
        return ( self.first_name + ' ' + self.last_name )

class StudentParentInfo(models.Model):
    student = models.ForeignKey(StudentInfo, on_delete=models.CASCADE)
    father_name = models.CharField(max_length=255)
    mother_name = models.CharField(max_length=255)
    contact_info = models.CharField(max_length=10)
    email_id = models.EmailField(max_length=255)
    address1 = models.CharField(max_length=255)
    address2 = models.CharField(max_length=255)
    city = models.CharField(max_length=50)
    state = models.CharField(max_length=100)
    country_code = models.CharField(max_length=10)
    postal_code = models.CharField(max_length=10)

    def __str__(self):
        return self.father_name

class TeacherInfo(models.Model):
    first_name = models.CharField(max_length=255)
    last_name = models.CharField(max_length=255)
    gender = models.CharField(max_length=50)
    date_of_birth = models.DateField()
    qualifications = models.CharField(max_length=255)
    subject_teaches = models.CharField(max_length=10)
    contact_num = models.CharField(max_length=10)
    email_id = models.EmailField(max_length=100)
    address = models.CharField(max_length=255)
    city = models.CharField(max_length=50)
    state = models.CharField(max_length=100)
    country = models.CharField(max_length=20)
    postal_code = models.CharField(max_length=50)

    def __str__(self):
        return self.first_name + self.gender

class Results(models.Model):
    semester_choices = (
        ('quarterly', 'Quarterly Exam'),
        ('half_yearly', 'Half Yearly Exam'),
        ('yearly', 'Yearly Exam'),
    )

    student = models.ForeignKey(StudentInfo, on_delete=models.CASCADE)
    telugu = models.IntegerField(default=0)
    hindi = models.IntegerField(default=0)
    english = models.IntegerField(default=0)
    maths = models.IntegerField(default=0)
    science = models.IntegerField(default=0)
    social = models.IntegerField(default=0)
    semester = models.CharField(max_length=100, blank=True, choices=semester_choices)

    def total_marks(self):
        return self.telugu + self.hindi + self.english + self.maths + self.science + self.social

class Student_Attendance(models.Model):
    attendance_choices = (
        ('present', 'Present'),
        ('absent', 'Absent'),
        ('holiday', 'Holiday'),
    )
    student = models.ForeignKey(StudentInfo, on_delete=models.CASCADE)
    monday = models.CharField(max_length=50, choices=attendance_choices)
    tuesday = models.CharField(max_length=50, choices=attendance_choices)
    wednesday = models.CharField(max_length=50, choices=attendance_choices)
    thursday = models.CharField(max_length=50, choices=attendance_choices)
    friday = models.CharField(max_length=50, choices=attendance_choices)
    saturday = models.CharField(max_length=50, choices=attendance_choices)
    attendance_percentage = models.CharField(max_length=50)

    def __str__(self):
        return self.student.first_name + self.attendance_percentage

