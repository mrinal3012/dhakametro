import 'package:fireauth/data/custom_widget_page.dart';
import 'package:fireauth/data/model_page.dart';
import 'package:flutter/material.dart';

class FQAPage extends StatefulWidget {
  const FQAPage({Key? key}) : super(key: key);

  @override
  State<FQAPage> createState() => _FQAPageState();
}

class _FQAPageState extends State<FQAPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, title: Center(child: Text("FQA Page")),),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
              itemCount: FAQList.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${FAQList[index].question}",style: mystyleroboto(16,Colors.black,FontWeight.w800),),
                    SizedBox(height: 5,),
                    Text("Ans : ${FAQList[index].ans}",style: mystyleroboto(15,Colors.black,FontWeight.w800)),
                  ],
                ),
              )
            ,),
        ),
      ),

    );
  }
}
