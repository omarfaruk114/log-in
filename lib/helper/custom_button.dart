import 'package:finalwork/utills/all_color.dart';
import 'package:flutter/material.dart';
class CustomButton extends StatefulWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}
AllColor _allColor=AllColor();
class _CustomButtonState extends State<CustomButton> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: _allColor.appColor
      ),
      child: Center(child: Text("Log IN",
      style: TextStyle(color: Colors.white,
      fontSize: 18, fontWeight: FontWeight.bold),)),
    );
  }
}
