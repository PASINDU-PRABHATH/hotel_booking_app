import 'package:flutter/material.dart';
import 'package:hotel_management_app/widget/custom_button.dart';
import 'package:hotel_management_app/widget/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Sign In",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w800, fontSize: 28),
        ),
        SizedBox(
          height: 30,
        ),
        CustomTextField(
          textFieldName: 'E-Mail',
        ),
        CustomTextField(
          textFieldName: 'Password',
        ),
        SizedBox(height: 30,),

        CustomButton(btnText: 'SignIn',),
        SizedBox(height: 40,)
      ],
    );
  }
}


