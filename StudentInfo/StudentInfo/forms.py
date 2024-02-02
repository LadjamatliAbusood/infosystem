# yourapp/forms.py
from django import forms
from .models import EmpInsert

class ProfileUpdateForm(forms.ModelForm):
    class Meta:
        model = EmpInsert
        fields = ['filenameimage', 'firstname', 'middlename', 'lastname', 'course', 'yrlevel','section']
