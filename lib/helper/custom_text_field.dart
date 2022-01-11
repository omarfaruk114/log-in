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
        validator: (value){
          bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(value!);
          if(value!.isEmpty){
            return "This field can not empty!";
          }
          if(widget.labelText=="Email"){
            if(!emailValid)
              return "Email format is not correct!";
          }
          if(widget.labelText=="Password")
            {
              if(value.length<8)
                return "Password must be atleast 8 char!";
            }
        },

        obscureText: widget.obsecureVal,
        controller: widget.controller,
        cursorColor: allColor.appColor,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: allColor.appColor
                ),
                borderRadius: BorderRadius.circular(15)
            ),
            labelText: widget.labelText,
            labelStyle: TextStyle(
                color: allColor.appColor
            ),
            hintText: widget.hintText,
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
