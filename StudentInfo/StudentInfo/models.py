# from django.db import models
# import datetime
# import os
# from django.contrib.auth.models import User

# def get_file_path(request, filename):
#     filename_original = filename
#     nowTime = datetime.datetime.now().strftime('%Y%m%d%H:%M:%S')
#     filename = "%s%s" % (nowTime, filename_original)
#     return os.path.join('uploads/', filename)

# class EmpInsert(models.Model):
#     user = models.ForeignKey(User, on_delete=models.CASCADE)
#     filenameimage = models.ImageField(upload_to=get_file_path, null=True, blank=True)
#     username = models.CharField(max_length=50,default='')
#     password = models.CharField(max_length=50,default='')
#     studentno = models.CharField(max_length=100)
#     firstname = models.CharField(max_length=100)
#     middlename = models.CharField(max_length=100)
#     lastname = models.CharField(max_length=100)
#     course = models.CharField(max_length=100)
#     yrlevel = models.CharField(max_length=100)
#     section = models.CharField(max_length=100)

#     class Meta:
#         db_table = 'studentsdb'

#     def __str__(self):
#         return self.username
    
#     empAuth_object = models.Manager()
from django.db import models
import datetime
import os
from django.contrib.auth.models import User

def get_file_path(request, filename):
    filename_original = filename
    nowTime = datetime.datetime.now().strftime('%Y%m%d%H:%M:%S')
    filename = "%s%s" % (nowTime, filename_original)
    return os.path.join('uploads/', filename)


class EmpInsertManager(models.Manager):
    def search(self, query):
        return self.filter(
            models.Q(username__icontains=query) |
            models.Q(studentno__icontains=query) |
            models.Q(firstname__icontains=query) |
            models.Q(middlename__icontains=query) |
            models.Q(lastname__icontains=query) |
            models.Q(course__icontains=query) |
            models.Q(yrlevel__icontains=query) |
            models.Q(section__icontains=query)
        )

class EmpInsert(models.Model):
    # user = models.OneToOneField(User, on_delete=models.CASCADE)
    user = models.OneToOneField(User, primary_key=True, on_delete=models.CASCADE)
    filenameimage = models.ImageField(upload_to=get_file_path, null=True, blank=True)
    username = models.CharField(max_length=50)
    password = models.CharField(max_length=50)
    studentno = models.CharField(max_length=100)
    firstname = models.CharField(max_length=100)
    middlename = models.CharField(max_length=100)
    lastname = models.CharField(max_length=100)
    course = models.CharField(max_length=100)
    yrlevel = models.CharField(max_length=100)
    section = models.CharField(max_length=100)


    objects = EmpInsertManager()


    class Meta:
        db_table = 'studentsdb'

    def __str__(self):
        return self.user.username
    


