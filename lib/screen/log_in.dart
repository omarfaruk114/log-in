import 'package:finalwork/helper/custom_text_field.dart';
import 'package:finalwork/utills/all_color.dart';
import 'package:flutter/material.dart';
class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}
TextEditingController _emailController = TextEditingController();
TextEditingController _passController = TextEditingController();

AllColor allColor = AllColor();
class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Icon(Icons.volunteer_activism,
          size: 100,color: allColor.appColor,),
          SizedBox(
            height: 80,
          ),
        CustomTextField(
          hintText: "Enter Your Email",
          labelText: "Email",
          controller: _emailController,
          obsecureVal: false,
        ),
          SizedBox(
            height: 15,

          ),
          CustomTextField(
            hintText: "Enter Your Password",
            labelText: "Password",
            controller: _passController,
            obsecureVal: true,
          ),
        ],
      ),
    );
  }
}
