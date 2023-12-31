import 'package:fireauth/data/custom_widget_page.dart';
import 'package:fireauth/data/model_page.dart';
import 'package:fireauth/payment/billpay_page.dart';
import 'package:flutter/material.dart';

class StationBookingPage extends StatefulWidget {
  const StationBookingPage({Key? key}) : super(key: key);

  @override
  State<StationBookingPage> createState() => _StationBookingPageState();
}

class _StationBookingPageState extends State<StationBookingPage> {

  List<StationModel> addTicketList=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,
        width: double.infinity,
        child: GridView.builder(
          itemCount: stationList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:3,
              childAspectRatio: .7,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(border: Border.all(width: 4,color: Colors.teal.withOpacity(.2)),
                  color: Colors.blueGrey.withOpacity(.2), borderRadius: BorderRadius.circular(10)),

              child: Column(children: [
                SizedBox(height: 20,),
                Text("${stationList![index].firstStationName}",style:mystyleroboto(15,Colors.black,FontWeight.w500)),
                Container(height: 30,width: 30,child: Image.asset("images/updown.png"),),
                Text("${stationList![index].secondStationName}",style:mystyleroboto(15,Colors.black,FontWeight.w500)),

                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(children: [
                    Text("Rs ${stationList![index].amount}",style:mystyleroboto(8,textClrteal,FontWeight.w800)),
                    Spacer(),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: textClrteal),
                        onPressed: () {
                          addTicketList.add(stationList[index]);
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => BillPayPage(modelList: addTicketList),));
                        }, child: Text("Book"))
                  ],),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
