class Validation{
  String? validateName(String? name)
  {
    if(name==null) {
      return null;
    }
   RegExp nameRegex=RegExp(r'^[a-zA-Z]{4,}');
   if (nameRegex.hasMatch(name)) {
    return null;
  } else {
    return "invalid name ";
  }

  }


  String? validateEmail(String? email) {
    if(email==null) {
      return null;
    }
  RegExp regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  if (!regex.hasMatch(email)) {
    return 'Invalid email format';
  }
  return null;
}



String? validatePhone(String? phone) {
  if(phone==null) {
      return null;
    }
   RegExp regex = RegExp(r'^0(10|11|12)\d{8}$');
  if (!regex.hasMatch(phone)) {
    return 'Invalid phone number';
  }
  return null;
}

String? validatePassword(String? password) {
  if(password==null) {
      return null;
    }
  RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$%^&*(),.?":{}|<>]).{8,}$');
  if (!regex.hasMatch(password)) {
    return 'Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one digit, and one special character';
  }
  return null;
}
}