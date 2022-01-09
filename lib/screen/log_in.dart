import 'package:finalwork/utills/all_color.dart';
import 'package:flutter/material.dart';
class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}
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
          Padding(
            padding: const EdgeInsets.only(left: 28.0,right: 28),
            child: TextFormField(
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
                  borderRadius: BorderRadius.circular(15)

                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
