import 'package:finalwork/utills/all_color.dart';
import 'package:flutter/material.dart';
class CustomTextField extends StatefulWidget {
  String hintText;
  String labelText;
  TextEditingController controller;
  bool obsecureVal;
   CustomTextField({Key? key,
     required this.hintText,
     required this.labelText,
     required this.controller,
     required this.obsecureVal
   }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

AllColor allColor = AllColor();
class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 28.0,right: 28),
      child: TextFormField(
        obscureText: true,
        cursorColor: allColor.appColor,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: allColor.appColor
                ),
                borderRadius: BorderRadius.circular(15)
            ),
            labelText: "Email",
            labelStyle: TextStyle(
                color: allColor.appColor
            ),
            hintText: "Enter your email",
            border:OutlineInputBorder(
              borderSide: BorderSide(
                color: allColor.appColor,
              ),
              borderRadius: BorderRadius.circular(15),

            )
        ),
      ),
    );
  }
}
