from django.shortcuts import render,redirect
from StudentInfo.models import EmpInsert
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
import mysql.connector
from operator import itemgetter
from django.contrib.auth.models import User
from django.contrib.auth.views import PasswordChangeView, PasswordChangeDoneView
from django.contrib.auth.forms import PasswordChangeForm
from .forms import ProfileUpdateForm



def Insertrecord(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        studentno = request.POST.get('studentno')
        firstname = request.POST.get('firstname')
        middlename = request.POST.get('middlename')
        lastname = request.POST.get('lastname')
        course = request.POST.get('course')
        yrlevel = request.POST.get('yrlevel')
        section = request.POST.get('section')

        # Check if the username already exists in auth_user table
        if not User.objects.filter(username=username).exists():
            # Create a new user in auth_user table
            user = User.objects.create_user(username=username, password=password)

            # Create a record in custom EmpInsert table
            saverecord = EmpInsert(
                user=user,
                username=username,
                password=password,
                studentno=studentno,
                firstname=firstname,
                middlename=middlename,
                lastname=lastname,
                course=course,
                yrlevel=yrlevel,
                section=section
            )

            if 'filenameimage' in request.FILES:
                saverecord.filenameimage = request.FILES['filenameimage']

            saverecord.save()

            messages.success(request, 'Account registered. You can now log in')
            return render(request, 'login.html')
        else:
            messages.warning(request, 'Username already exists. Choose a different username.')
    
    return render(request, 'index.html')
    
    
# def login(request):
#     return render(request, 'login.html')




# @login_required
# def profile(request):
#     current_user = request.user
#     return render(request, 'profile.html', {'username': current_user.username})

     
# def login_view(request):
#     con = mysql.connector.connect(host="localhost", user="root", password="", database="studentinfosystem")
#     cursor = con.cursor()
#     con2 = mysql.connector.connect(host="localhost", user="root", password="", database="studentinfosystem")
#     cursor2 = con2.cursor()
#     sqlcommand = "select username from studentsdb"
#     sqlcommand2 = "select password, studentno, filenameimage, firstname, middlename, lastname, course, yrlevel, section from studentsdb"
#     cursor.execute(sqlcommand)
#     cursor2.execute(sqlcommand2)

#     u = []
#     p = []
#     for i in cursor:
#         u.append(i)
#     for j in cursor2:
#         p.append(j)

#     res = list(map(itemgetter(0), u))
#     res2 = list(p)

#     if request.method == "POST":
#         uname = request.POST.get("username")
#         pass1 = request.POST.get("pass1")
#         user = authenticate(request, username=uname, password=pass1)
#         i = 1
#         k = len(res)
#         while i < k:
#             if res[i] == uname and res2[i][0] == pass1 and user is not None:
#                 user = authenticate(request, username=uname, password=pass1)
#                 image_path = res2[i][2]
#                 print("Image File Path:", image_path)
#                 user_info = {
#                     'username': uname,
#                     'studentno': res2[i][1],
#                     'image_url': image_path,
#                     'firstname': res2[i][3],
#                     'middlename': res2[i][4],
#                     'lastname': res2[i][5],
#                     'course': res2[i][6],
#                     'yrlevel': res2[i][7],
#                     'section': res2[i][8],
#                 }
        
#                 return render(request, "profile.html", user_info)
#             i += 1
#         else:
#             messages.info(request, "Username or Password incorrect")
#             return redirect('login')

#     return render(request, 'login.html')

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# def login_view(request):
#     if request.method == 'POST':
#         username = request.POST['username']
#         password = request.POST['pass1']
#         user = authenticate(request, username=username, password=password)
#         if user is not None:
#             login(request, user)
#             return redirect('profile')
#         else:
#             messages.error(request, 'Invalid username or password.')
#     return render(request, 'login.html')

#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# def user_login2(request):
#     if request.method == 'POST':
#         username = request.POST['username']
#         password = request.POST['password']
#         user = authenticate(request, username=username, password=password)

#         if user is not None:
#             login(request, user)
#             return redirect('profile')  # Replace 'dashboard' with your desired dashboard URL
#         else:
#             messages.error(request, 'Invalid username or password.')

#     return render(request, 'login2.html')  # Create a login.html template in your templates folder

# def user_logout(request):
#     logout(request)
#     return redirect('login2')  # Replace 'login' with your login URL

#++++++++++++++++++++++++++++++++++++++++++++++++++++++
def user_login(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)

        if user is not None:
            login(request, user)
            return redirect('profile')  # Replace 'dashboard' with your desired dashboard URL
        else:
            messages.error(request, 'Invalid username or password.')

    return render(request, 'login.html')  # Create a login.html template in your templates folder

def user_logout(request):
    logout(request)
    return redirect('login')  # Replace 'login' with your login URL

def profile(request):
    if request.user.is_authenticated:
        user_details = {
            'studentno': request.user.empinsert.studentno,
            'filenameimage': request.user.empinsert.filenameimage,
            'firstname': request.user.empinsert.firstname,
            'middlename': request.user.empinsert.middlename,
            'lastname': request.user.empinsert.lastname,
            'course': request.user.empinsert.course,
            'yrlevel': request.user.empinsert.yrlevel,
            'section': request.user.empinsert.section,
        }
        return render(request, 'profile.html', {'user_details': user_details})
    else:
        return redirect('login')  # Redirect to login if the user is not authenticated
    

def classmate_list(request):
    if request.user.is_authenticated:
        current_user = request.user
        classmates = EmpInsert.objects.filter(course=current_user.empinsert.course, yrlevel=current_user.empinsert.yrlevel, section=current_user.empinsert.section).exclude(user=current_user)
        return render(request, 'classmatelist.html', {'classmates': classmates})
    else:
        # Redirect to login if the user is not authenticated
        return redirect('login')


def all_students(request):
    students = EmpInsert.objects.all()

    context = {
        'students': students,
    }

    return render(request, 'all_students.html', context)



@login_required
def edit_profile(request):
    if request.method == 'POST':
        form = ProfileUpdateForm(request.POST, request.FILES, instance=request.user.empinsert)

        if form.is_valid():
            form.save()
            return redirect('profile')  # Redirect to the profile page after successful update
    else:
        form = ProfileUpdateForm(instance=request.user.empinsert)

    return render(request, 'edit_profile.html', {'form': form})






def search_result(request):
    # Retrieve the search query from the URL parameters
    search_query = request.GET.get('searchbox', '')
    
    # Perform the search using the EmpInsert model
    search_results = EmpInsert.objects.search(search_query)

    context = {
        'search_results': search_results,
        'search_query': search_query,
    }

    return render(request, 'search_result.html', context)


# def change_password(request):
#     return render(request, 'changepassword.html')

# class CustomPasswordChangeView(PasswordChangeView):
#     form_class = PasswordChangeForm
#     template_name = 'changepassword.html'
#     success_url = '/password_change_done/'

#     def form_valid(self, form):
#         response = super().form_valid(form)
#         # You can perform additional actions after a successful password change if needed
#         return response

#     def form_invalid(self, form):
#         response = super().form_invalid(form)
#         # You can handle invalid form submission here if needed
#         return response

# def password_change_done(request):
#     return render(request, 'password_change_done.html')