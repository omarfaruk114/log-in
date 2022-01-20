import 'package:finalwork/screen/gallery_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
double containerHeight = 90;
double containerWidth = 90;
List<String> imgList=[
  "assets/images/img001.jpg",
  "assets/images/img002.jpg",
  "assets/images/img003.jpg",
  "assets/images/img004.jpg",
  "assets/images/img005.jpg",
  "assets/images/img006.jpg",
  "assets/images/img007.jpg",
  "assets/images/img008.jpg",
  "assets/images/img009.jpg",

];
class _HomePageState extends State<HomePage> {
  secureScreen() async{
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }
  @override
  void initState() {
    super.initState();
    secureScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Picture"),
      ),
      body: Center(
        child: Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            childAspectRatio: 1,
            children: imgList.map((item){
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (Context)=>GalleryDetails(img: item)));
                  },
                  child: Container(
                      height: containerHeight,
                      width: containerWidth,
                      child: Image.asset(item,fit: BoxFit.cover,)),
                ),
              );
            }).toList(),
          ),
        ),
      )


      // Center(
      //   child: Expanded(
      //     child: ListView.builder(
      //       itemCount: imgList.length,
      //         itemBuilder: (context,index){
      //           return   Padding(
      //             padding: const EdgeInsets.all(10.0),
      //             child: Column(
      //               children: [
      //                 InkWell(
      //                   onTap: (){
      //                     Navigator.push(context,
      //                         MaterialPageRoute(builder:
      //                         (Context)=>GalleryDetails
      //                           (img: imgList[index])));
      //                   },
      //                   child: Container(
      //                     decoration: BoxDecoration(
      //                       border: Border.all(
      //                         width: 3,
      //                         color: Colors.pink
      //                       )
      //                     ),
      //                       height: 200,
      //                       width: 200,
      //                       child: Image.asset
      //                         (imgList[index],
      //                         fit: BoxFit.cover,)),
      //                 ),
      //               ],
      //             ),
      //           );
      //         }
      //     ),
      //   )
      // )
      ,
    );
  }
}
