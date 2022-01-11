import 'package:finalwork/helper/custom_button.dart';
import 'package:finalwork/helper/custom_text_field.dart';
import 'package:finalwork/screen/home_page.dart';
import 'package:finalwork/screen/sing_up.dart';
import 'package:finalwork/utills/all_color.dart';
import 'package:flutter/material.dart';
class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}
final GlobalKey<FormState> _formKey=GlobalKey();
TextEditingController _emailController = TextEditingController();
TextEditingController _passController = TextEditingController();

AllColor allColor = AllColor();
TextEditingController _emailControllerr=TextEditingController();
TextEditingController _passControllerr=TextEditingController();
class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
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
              hintText: "Enter Your Password",
              labelText: "Password",
              controller: _passController,
              obsecureVal: true,
            ),
            SizedBox(
              height: 15,

            ),
            InkWell(
              onTap :(){
                if(_formKey.currentState!.validate())
                Navigator.push(context, MaterialPageRoute
                  (builder: (context)=>HomePage()));
            },
              child: CustomButton(
                height :60,
                width: 300,
                btnText :"LOG IN"
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don`t have an account",
                style: TextStyle(fontSize: 18),),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context)
                        =>SingUp()));
                  },
                  child: Text("Sing Up!",
                      style: TextStyle(fontSize: 18,
                      color: allColor.appColor)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
