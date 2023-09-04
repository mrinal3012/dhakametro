import 'dart:async';

import 'package:fireauth/screen/home_page.dart';
import 'package:fireauth/screen/registration_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EmailVerificationPage extends StatefulWidget {
  const EmailVerificationPage({Key? key}) : super(key: key);

  @override
  State<EmailVerificationPage> createState() => _EmailVerificationPageState();
}

class _EmailVerificationPageState extends State<EmailVerificationPage> {



  bool isEmailVarifyed = false;
  bool canRecentEmail = false;
  Timer ? timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isEmailVarifyed = FirebaseAuth.instance.currentUser!.emailVerified;
    if (!isEmailVarifyed) {
      sendVerificationEmail();
      timer =
          Timer.periodic(Duration(seconds: 3), (_) => checkEmailVerification());
    }
  }

  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Future checkEmailVerification() async {
    await FirebaseAuth.instance.currentUser!.reload();
    setState(() {
      isEmailVarifyed = FirebaseAuth.instance.currentUser!.emailVerified;
    });
    if (isEmailVarifyed) timer?.cancel();
  }

  Future sendVerificationEmail() async {
    try {
      final user = FirebaseAuth.instance.currentUser!;
      await user.sendEmailVerification();
      setState(() => canRecentEmail = true);
      await Future.delayed(Duration(seconds: 5));
      setState(() => canRecentEmail = false);
    } catch (e) {
      // Utils.showSnackBar(e.toString());
    }
  }



  @override
  Widget build(BuildContext context) =>isEmailVarifyed ? RegistrationPage():
  Scaffold(
    backgroundColor: Colors.grey.withOpacity(.6),
    appBar: AppBar(title: Text("Verify Email")),
    body: Padding(
      padding: const EdgeInsets.all(25.0),
      child:
      Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "A verification email has been send to your email",
          style: TextStyle(fontSize: 20, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 24,
        ),
        ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(50)),
            onPressed: () =>
            canRecentEmail ? sendVerificationEmail() : null,
            icon: Icon(
              Icons.email,
              size: 32,
            ),
            label: Text(
              "Resent Email",
              style: TextStyle(fontSize: 24),
            )),
        SizedBox(
          height: 10,
        ),
        TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              "Cancle",
              style: TextStyle(fontSize: 24, color: Colors.teal),
            ))
      ]),
    ),
  );

}
