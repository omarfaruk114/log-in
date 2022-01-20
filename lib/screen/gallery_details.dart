import 'package:flutter/material.dart';
class GalleryDetails extends StatefulWidget {
  String img;
   GalleryDetails({Key? key,required this.img}) : super(key: key);

  @override
  _GalleryDetailsState createState() => _GalleryDetailsState();
}

class _GalleryDetailsState extends State<GalleryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(widget.img),
      ),
    );
  }
}
