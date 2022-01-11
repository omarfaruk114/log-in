import 'package:finalwork/helper/custom_button.dart';
import 'package:finalwork/helper/custom_text_field.dart';
import 'package:finalwork/screen/log_in.dart';
import 'package:finalwork/utills/all_color.dart';
import 'package:flutter/material.dart';
class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}
final GlobalKey<FormState> _formKey=GlobalKey();
TextEditingController _emailController = TextEditingController();
TextEditingController _passController = TextEditingController();

AllColor allColor = AllColor();
TextEditingController _emailControllerr=TextEditingController();
TextEditingController _passControllerr=TextEditingController();
TextEditingController _confirmPassControllerr=TextEditingController();
class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
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
                hintText: "Enter New Password",
                labelText: "Password",
                controller: _passController,
                obsecureVal: true,
              ),
              SizedBox(
                height: 15,

              ),
              CustomTextField(
                hintText: "Re-enter Your Password",
                labelText: "Confirm PassWord",
                controller: _confirmPassControllerr,
                obsecureVal: true,
              ),
              SizedBox(
                height: 15,

              ),
              InkWell(
                onTap :(){
                  if(_formKey.currentState!.validate())
                  Navigator.push(context, MaterialPageRoute
                    (builder: (context)=>LogIn()));
                },
                child: CustomButton(
                    height :60,
                    width: 300,
                    btnText :"Sign Up"
                ),
              ),
              SizedBox(
                height: 15,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
