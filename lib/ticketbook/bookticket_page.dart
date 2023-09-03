import 'package:fireauth/data/custom_widget_page.dart';
import 'package:fireauth/data/model_page.dart';
import 'package:fireauth/payment/card_done_page.dart';
import 'package:fireauth/payment/payment_page.dart';
import 'package:flutter/material.dart';

class BookTicketPage extends StatefulWidget {
  const BookTicketPage({Key? key}) : super(key: key);

  @override
  State<BookTicketPage> createState() => _BookTicketPageState();
}

class _BookTicketPageState extends State<BookTicketPage> {

  int a = 1;
  int b = 1;
  var value;
  var count = 1;
  var totalValue;

  getdata() {
    setState(() {
      a == 0 && b == 0? value = 0: a == 0 && b == 1 ? value = 20 : a == 0 && b == 2 ? value = 20 : a == 0 && b == 3 ? value = 30 : a == 0 && b == 4 ? value = 30 : a == 0 && b == 5 ? value = 40 : a == 0 && b == 6 ? value = 40 : a == 0 && b == 7 ? value = 50 : a == 0 && b == 8 ? value = 60
          : a == 1 && b == 0 ? value = 20 : a == 1 && b == 1 ? value = 0 : a == 1 && b == 2 ? value = 20 : a == 1 && b == 3 ? value = 20 : a == 1 && b == 4 ? value = 30 : a == 1 && b == 5 ? value = 30 : a == 1 && b == 6 ? value = 40 : a == 1 && b == 7 ? value = 40 : a == 1 && b == 8
          ? value = 50
          : a == 2 && b == 0
          ? value = 20
          : a == 2 && b == 1
          ? value = 20
          : a == 2 && b == 2
          ? value = 0
          : a == 2 && b == 3
          ? value = 20
          : a == 2 && b == 4
          ? value = 20
          : a == 2 && b == 5
          ? value = 30
          : a == 2 && b == 6
          ? value = 30
          : a == 2 && b == 7
          ? value = 40
          : a == 2 && b == 8
          ? value = 40
          : a == 3 && b == 0
          ? value = 30
          : a == 3 && b == 1
          ? value = 20
          : a == 3 && b == 2
          ? value = 20
          : a == 3 && b == 3
          ? value = 0
          : a == 3 && b == 4
          ? value = 20
          : a == 3 && b == 5
          ? value = 20
          : a == 3 && b == 6
          ? value = 20
          : a == 3 && b == 7
          ? value = 30
          : a == 3 && b == 8
          ? value = 30
          : a == 4 && b == 0
          ? value = 30
          : a == 4 && b == 1
          ? value = 30
          : a == 4 && b == 2
          ? value = 20
          : a == 4 && b == 3
          ? value = 20
          : a == 4 && b == 4
          ? value = 0
          : a == 4 && b == 5
          ? value = 20
          : a == 4 && b == 6
          ? value = 20
          : a == 4 && b == 7
          ? value = 20
          : a == 4 && b == 8
          ? value = 30
          : a == 5 && b == 0
          ? value = 40
          : a == 5 && b == 1
          ? value = 30
          : a == 5 && b == 2
          ? value = 30
          : a == 5 && b == 3
          ? value = 20
          : a == 5 && b == 4
          ? value = 20
          : a == 5 && b == 5
          ? value = 0
          : a == 5 && b == 6
          ? value  = 20
          : a == 5 && b == 7
          ? value = 20
          : a == 5 && b == 8
          ? value = 20
          : a == 6 && b == 0
          ? value = 40
          : a == 6 && b == 1
          ? value = 40
          : a == 6 && b == 2
          ? value = 30
          : a == 6 && b == 3
          ? value = 20
          : a == 6 && b == 4
          ? value = 20
          : a == 6 && b == 5
          ? value = 20
          : a == 6 && b == 6
          ? value = 0
          : a == 6 && b == 7
          ? value = 20
          : a == 6 && b == 8
          ? value = 20
          : a == 7 && b == 0
          ? value = 50
          : a == 7 && b == 1
          ? value = 40
          : a == 7 && b == 2
          ? value = 40
          : a == 7 && b == 3
          ? value = 30
          : a == 7 && b == 4
          ? value = 20
          : a == 7 && b == 5
          ? value = 20
          : a == 7 && b == 6
          ? value = 20
          : a == 7 && b == 7
          ? value = 0
          : a == 7 && b == 8
          ? value = 20
          : a == 8 && b == 0
          ? value = 60
          : a == 8 && b == 1
          ? value = 50
          : a == 8 && b == 2
          ? value = 40
          : a == 8 && b == 3
          ? value = 30
          : a == 8 && b == 4
          ? value = 20
          : a == 8 && b == 5
          ? value = 20
          : a == 8 && b == 6
          ? value = 20
          : a == 8 && b == 7
          ? value = 20
          : a == 8 && b == 8
          ? value = 0
          : value = 0;
      totalValue = value * count;
    });
    print(
        "bbbbbbbbbbbbbbbb...................................................$b");
    print(
        "aaaaaaaaaaaaaaaaaaaaaa...............................................$a");
    print(
        "valuevaluevaluevalue,...................................................$value");
  }

  List<Station> addStationList = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    height: double.infinity,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                            flex: 8,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xff015281),
                                            borderRadius:
                                                BorderRadius.circular(8)),


                                        child: Center(
                                          child: DropdownButton(
                                              value: a,
                                              items: [
                                                DropdownMenuItem(
                                                  child: Text("Uttara North"),
                                                  value: 0,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Uttara Center"),
                                                  value: 1,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Uttara South"),
                                                  value: 2,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Pallabi"),
                                                  value: 3,
                                                ),DropdownMenuItem(
                                                  child: Text("Mirpur-11"),
                                                  value: 4,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Mirpur-10"),
                                                  value: 5,

                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Kazipara"),
                                                  value: 6,
                                                ),DropdownMenuItem(
                                                  child: Text("Shewrapara"),
                                                  value: 7,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Agargaon"),
                                                  value: 8,
                                                ),

                                              ],
                                              onChanged: (int ? value) => setState(() {
                                                a = value!;
                                                getdata();
                                              })),
                                        ),

                                        // ListView.builder(
                                        //   itemCount: stationNameList.length,
                                        //   itemBuilder: (context, index) =>
                                        //       Container(
                                        //           child: TextButton(
                                        //               onPressed: () {
                                        //                 a = stationNameList[
                                        //                         index]
                                        //                     .id;
                                        //                 getdata();
                                        //                 setState(() {});
                                        //                 print(
                                        //                     ".......................................................$a");
                                        //               },
                                        //               child: Text(
                                        //                 "${stationNameList[index].name}",
                                        //                 style: mystyleroboto(
                                        //                     18,
                                        //                     Colors.black,
                                        //                     FontWeight.w500),
                                        //               ))),
                                        // ),

                                      ),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xff015281),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Center(
                                          child: DropdownButton(
                                              value: b,
                                              items: [
                                                DropdownMenuItem(
                                                  child: Text("Uttara North"),
                                                  value: 0,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Uttara Center"),
                                                  value: 1,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Uttara South"),
                                                  value: 2,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Pallabi"),
                                                  value: 3,
                                                ),DropdownMenuItem(
                                                  child: Text("Mirpur-11"),
                                                  value: 4,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Mirpur-10"),
                                                  value: 5,

                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Kazipara"),
                                                  value: 6,
                                                ),DropdownMenuItem(
                                                  child: Text("Shewrapara"),
                                                  value: 7,
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Agargaon"),
                                                  value: 8,
                                                ),

                                              ],
                                              onChanged: (int ? value) => setState(() {
                                                b = value!;
                                                getdata();
                                              })),
                                        ),

                                        // ListView.builder(
                                        //   itemCount: stationNameList.length,
                                        //   itemBuilder: (context, index) =>
                                        //       Container(
                                        //           child: TextButton(
                                        //               onPressed: () {
                                        //                 b = stationNameList[
                                        //                         index]
                                        //                     .id;
                                        //                 getdata();
                                        //                 setState(() {});
                                        //                 print(
                                        //                     ".......................................................$b");
                                        //               },
                                        //               child: Text(
                                        //                   "${stationNameList[index].name}",
                                        //                   style: mystyleroboto(
                                        //                       18,
                                        //                       Colors.black,
                                        //                       FontWeight
                                        //                           .w500)))),
                                        // ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )),
                        Expanded(flex: 1, child: Container()),
                        Expanded(
                            flex: 8,
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Row(
                                        children: [
                                          TextButton(
                                              onPressed: () {
                                                count > 0
                                                    ? count--
                                                    : count == 0;
                                                setState(() {});
                                                getdata();
                                              },
                                              child: Icon(
                                                Icons.remove,
                                                size: 25,
                                              )),
                                          Text("${count}",
                                              style: mystyleroboto(
                                                  18,
                                                  Colors.black,
                                                  FontWeight.w500)),
                                          TextButton(
                                              onPressed: () {
                                                count++;
                                                setState(() {});
                                                getdata();
                                              },
                                              child: Icon(
                                                Icons.add,
                                                size: 25,
                                              )),
                                        ],
                                      ),
                                      Spacer(),
                                      Text("Amount Tk:-$value",
                                          style: mystyleroboto(18, Colors.black,
                                              FontWeight.w500)),
                                      SizedBox(
                                        width: 10,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("Total Amount Tk:-$totalValue",
                                      style: mystyleroboto(
                                          18, Colors.black, FontWeight.w500))
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xff015281)),
                                  onPressed: () {
                                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentPage(ticketmodel: )));
                                    // addStationList.add(stationNameList[index]);

                                    // Navigator.of(context)
                                    //     .push(MaterialPageRoute(
                                    //   builder: (context) => PaymentPage(modelList: )
                                    // ));
                                  },
                                  child: Text("Payment",
                                      style: mystyleroboto(
                                          18, Colors.black, FontWeight.w700))),
                            )),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 4,
                  child: Container(
                    height: double.infinity,
                    color: Colors.white,
                    child: Image.asset("images/trainpic.png"),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
