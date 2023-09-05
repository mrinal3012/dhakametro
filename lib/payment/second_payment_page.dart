import 'package:fireauth/data/custom_widget_page.dart';
import 'package:fireauth/data/model_page.dart';
import 'package:fireauth/payment/second_card_done_page.dart';
import 'package:flutter/material.dart';

class SecondPaymentPage extends StatefulWidget {
  const SecondPaymentPage({Key? key}) : super(key: key);

  @override
  State<SecondPaymentPage> createState() => _SecondPaymentPageState();
}

class _SecondPaymentPageState extends State<SecondPaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: GestureDetector(
              onTap: () {
                // addCardList.add(widget.modelList[index]);
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => CardDonePage(cardList: addCardList)));
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondCardDonePage(),));

              },
              child: Container(
                decoration: BoxDecoration(color: Colors.blueGrey.withOpacity(.1),borderRadius: BorderRadius.circular(12)),
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text("${paymentList[index].name}",style:mystyleroboto(18,Colors.black,FontWeight.w500)),
                      // Text("${widget.modelList[index].firstStationName}"),
                      // Text("${widget.modelList[index].secondStationName}"),
                      Spacer(),
                      Container(height: 80,width: 80,
                        child: Image.asset("${paymentList[index].image}"),)
                    ],
                  ),
                ),
              ),
            ),
          ),),
      ),
    );
  }
}
