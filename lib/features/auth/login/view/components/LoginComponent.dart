import 'package:auth_test/core/utills/validation.dart';
import 'package:auth_test/features/auth/registration/view/pages/regist_page.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utills/Decorations.dart';


class LoginComponent extends StatelessWidget {
  const LoginComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: TextEditingController(),
          keyboardType: TextInputType.emailAddress,
          validator: Validation().validateEmail,
          decoration: Decorations().setDecoTextFeild().copyWith( 
            label: Text("Email"),
            prefixIcon: Icon(Icons.email_outlined),
          ),
        ),
        SizedBox(height: 15),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: TextEditingController(),
          keyboardType: TextInputType.visiblePassword,
          validator: Validation().validatePassword,
          decoration: Decorations().setDecoTextFeild().copyWith( 
            label: Text("Password"),
            prefixIcon: Icon(Icons.lock_outline),
          ),
          obscureText: true,
          obscuringCharacter: "*",
        ),
      ],
    );
  }
}




class LoginImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}


class buttons extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(onPressed:(){} , child: Text("Login ")),
        SizedBox(height: 15,),

        TextButton(onPressed: (){
           Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Registration()), 
                );
        }, child: Text("Sign up"))
      ],
    );
  }
  
}