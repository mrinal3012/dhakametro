import 'package:fireauth/data/custom_widget_page.dart';
import 'package:flutter/material.dart';

class CustomSupportPage extends StatefulWidget {
  const CustomSupportPage({Key? key}) : super(key: key);

  @override
  State<CustomSupportPage> createState() => _CustomSupportPageState();
}

class _CustomSupportPageState extends State<CustomSupportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, title:
      Center(child: Center(child: Text("CustomSupport",style: mystyleroboto(22,Colors.black,FontWeight.w700)))),),
      backgroundColor: Colors.white,
      body:Container(
          height: double.infinity,
          width: double.infinity,

        child: Column(children: [
          Expanded(flex: 3, child:Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/trainpic.png"))),)),
          SizedBox(height: 50,),
          Expanded(flex: 2, child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:40),
            child: Container(height: 150,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email: metro@gmail.com",style: mystyleroboto(18,Colors.black,FontWeight.w700),),
                  SizedBox(height: 10,),
                  Text("Hot Line: 021 449 4336",style: mystyleroboto(18,Colors.black,FontWeight.w700),),
                  SizedBox(height: 10,),
                  Text("Fax: 88-02-9353507",style: mystyleroboto(18,Colors.black,FontWeight.w700),),
                  SizedBox(height: 10,),
                  Text("Office: 71, GARDEN, 72 Old Elephant Rd, Dhaka 1000",style: mystyleroboto(18,Colors.black,FontWeight.w700),),
                ],),),
          ))
        ],)
      ),
    );
  }
}
