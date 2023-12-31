import 'package:fireauth/ticketbook/bookticket_page.dart';
import 'package:fireauth/ticketbook/history_page.dart';
import 'package:fireauth/ticketbook/stationbooking_page.dart';
import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {

  var isColor=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      
      
      SafeArea(
        child: Column(
          children: [
            Expanded(flex: 1,child: Container(
              child: Column(
                children: [
                  Expanded(flex: 2,child: Image.asset("images/home.png")),
                  Expanded(flex: 1,child: Row(children: [
                    Expanded(child: Column(children: [
                      TextButton(onPressed: (){
                        setState(() {
                          isColor=0;
                        });
                      }, child: Text(
                        "Book Ticket",
                        style: TextStyle(
                            fontSize: 15,
                            color: isColor == 0 ? Colors.red : Colors.blueGrey,
                            fontWeight: FontWeight.w700),
                      ),),

                      Container(
                        height: 2,
                        width: double.infinity,
                        color: isColor == 0 ? Colors.red : Colors.black,
                      )
                    ],)),

                    Expanded(child: Column(children: [
                      TextButton(onPressed: (){
                        setState(() {
                          isColor=1;
                        });
                      }, child: Text(
                        "station",
                        style: TextStyle(
                            fontSize: 15,
                            color: isColor == 1? Colors.red : Colors.blueGrey,
                            fontWeight: FontWeight.w700),
                      ),),

                      Container(
                        height: 2,
                        width:double.infinity,
                        color: isColor == 1 ? Colors.red : Colors.black,
                      )
                    ],)),
                    Expanded(child: Column(children: [
                      TextButton(onPressed: (){
                        setState(() {
                          isColor=2;
                        });
                      }, child: Text(
                        "History",
                        style: TextStyle(
                            fontSize: 15,
                            color: isColor == 2 ? Colors.red : Colors.blueGrey,
                            fontWeight: FontWeight.w700),
                      ),),

                      Container(
                        height: 2,
                        width: double.infinity,
                        color: isColor == 2 ? Colors.red : Colors.black,
                      )
                    ],)),
                  ],),),

                  Expanded(flex: 8,child:Container(
                    width: double.infinity,
                    color: Colors.red,
                    child: isColor == 0 ? BookTicketPage():isColor==1 ? StationBookingPage() : HistoryPage(),
                  ))
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
