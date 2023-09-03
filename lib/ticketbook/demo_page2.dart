import 'package:flutter/material.dart';

class DemoPage2 extends StatefulWidget {
  const DemoPage2({Key? key}) : super(key: key);

  @override
  State<DemoPage2> createState() => _DemoPage2State();
}

class _DemoPage2State extends State<DemoPage2> {

  int a = 0;

  var b;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Row(children: [

          Expanded(
            child: DropdownButton(
                value: a,
                items: [
                  DropdownMenuItem(
                    child: Text("relevancy"),
                    value: 0,
                  ),
                  DropdownMenuItem(
                    child: Text("popularity"),
                    value: 1,

                  ),
                  DropdownMenuItem(
                    child: Text("publishedAt"),
                    value: 2,
                  ),DropdownMenuItem(
                    child: Text("relevancy"),
                    value: 3,
                  ),
                  DropdownMenuItem(
                    child: Text("popularity"),
                    value: 4,

                  ),
                  DropdownMenuItem(
                    child: Text("publishedAt"),
                    value: 4,
                  ),DropdownMenuItem(
                    child: Text("relevancy"),
                    value: 6,
                  ),
                  DropdownMenuItem(
                    child: Text("popularity"),
                    value: 7,

                  ),
                  DropdownMenuItem(
                    child: Text("publishedAt"),
                    value: 8,
                  ),
                ],
                onChanged: (int ? value) => setState(() {
                  a = value!;
                })),

          ),
          Expanded(child: Container()),
          Expanded(child: Container()),
        ],),
      ),
    );
  }
}
