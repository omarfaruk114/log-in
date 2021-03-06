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
  "assets/images/001.jpg",
  "assets/images/002.jpg",
  "assets/images/003.jpg",
  "assets/images/004.jpg",
  "assets/images/005.jpg",
  "assets/images/006.jpg",
  "assets/images/007.jpg",
  "assets/images/008.jpg",
  "assets/images/009.jpg",
  "assets/images/0010.jpg",
  "assets/images/0011.jpg",
  "assets/images/0012.jpg",
  "assets/images/0013.jpg",
  "assets/images/0014.jpg",
  "assets/images/0015.jpg",
  "assets/images/0016.jpg",
  "assets/images/0017.jpg",
  "assets/images/0018.jpg",
  "assets/images/0019.jpg",
  "assets/images/0020.jpg",
  "assets/images/0021.jpg",
  "assets/images/0022.jpg",
  "assets/images/0023.jpg",
  "assets/images/0024.jpg",
  "assets/images/0025.jpg",
  "assets/images/0026.jpg",
  "assets/images/0027.jpg",
  "assets/images/0028.jpg",
  "assets/images/0029.jpg",
  "assets/images/0030.jpg",
  "assets/images/0031.jpg",
  "assets/images/0032.jpg",
  "assets/images/0033.jpg",
  "assets/images/0034.jpg",
  "assets/images/0035.jpg",
  "assets/images/0036.jpg",
  "assets/images/0037.jpg",
  "assets/images/0038.jpg",
  "assets/images/0039.jpg",
  "assets/images/0040.jpg",
  "assets/images/0041.jpg",

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
