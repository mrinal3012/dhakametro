import 'package:fireauth/data/custom_widget_page.dart';
import 'package:fireauth/data/firebase_helper.dart';
import 'package:fireauth/screen/login_page.dart';
import 'package:flutter/material.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  bool isObscure = true;
  final _formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Container(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Expanded(
                    flex: 3,
                    child: Container(child: Image.asset("images/logo.png"))),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                          child: Column(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                  child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "email coun't be empty";
                                  }
                                  if (value.length < 3) {
                                    return "Invalid email";
                                  }
                                  if (!value.contains("@")) {
                                    return "Invalid user email";
                                  }
                                },
                                textInputAction: TextInputAction.next,
                                controller: emailController,
                                decoration: InputDecoration(
                                    hintText: "Enter your email",
                                    labelText: "Enter your email",
                                    prefixIcon: Icon(Icons.email),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ))),
                          Expanded(
                              flex: 1,
                              child: Container(
                                  child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "password coun't be empty";
                                  }
                                  if (value.length < 6) {
                                    return "Password must be more than 6 digits";
                                  }
                                },
                                onEditingComplete: () {
                                  if (_formkey.currentState!.validate()) {
                                    print("successful");
                                  } else {
                                    print("unsuccessful");
                                  }
                                },
                                controller: passwordController,
                                obscureText: isObscure,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                    hintText: "Enter your password",
                                    labelText: "Enter your password",
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isObscure = !isObscure;
                                          });
                                        },
                                        icon: Icon(Icons.visibility)),
                                    prefixIcon: Icon(Icons.password_outlined),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ))),
                          Expanded(
                              flex: 1,
                              child: Container(
                                  child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "password coun't be empty";
                                  }
                                  if (value.length < 6) {
                                    return "Password must be more than 6 digits";
                                  }
                                  if(value!=passwordController.text){
                                    return "password dose not match";
                                  }
                                },
                                onEditingComplete: () {
                                  if (_formkey.currentState!.validate()) {
                                    print("successful");
                                  } else {
                                    print("unsuccessful");
                                  }
                                },
                                controller: passwordController2,
                                obscureText: isObscure,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                    hintText: "Confirm password",
                                    labelText: "Confirm password",
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isObscure = !isObscure;
                                          });
                                        },
                                        icon: Icon(Icons.visibility)),
                                    prefixIcon: Icon(Icons.password_outlined),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                              ))),
                        ],
                      )),
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                              flex: 2,
                              child: GestureDetector(
                                  onTap: () {
                                    if (_formkey.currentState!.validate()) {
                                      print("succesful");
                                    } else {}

                                    var e = emailController.text;

                                    var p = passwordController.text==passwordController2.text? passwordController.text:null;

                                    print(".....................................$p");
                                    // var p2=passwordController2.text;
                                    var obj = FirebaseHelper().singup(e, p,  context);
                                  },
                                  child: Container(
                                    height: 200,
                                    width: 500,
                                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/button.png"))),
                                    child: Center(child: Text("Sing Up",style: mystyleroboto(17, Colors.white,FontWeight.w700),)),
                                  ))),
                          Expanded(
                              flex: 1,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 70),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 1),
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: Container(
                                    height: double.infinity,
                                        width: double.infinity,
                                        decoration:BoxDecoration( color: Colors.white, borderRadius: BorderRadius.circular(30),

                                        ),
                                        child:Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Container(height: double.infinity,width: double.infinity,
                                            child: Image.asset("images/facebook.png"),
                                          ),
                                        )
                                    )

                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                            child:Container(
                                                height: double.infinity,
                                                width: double.infinity,
                                                decoration:BoxDecoration( color: Colors.white, borderRadius: BorderRadius.circular(30),

                                                ),
                                                child:Padding(
                                                  padding: const EdgeInsets.all(12.0),
                                                  child: Container(height: double.infinity,width: double.infinity,
                                                    child: Image.asset("images/google.webp"),
                                                  ),
                                                )
                                            )
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                            child: GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            height: double.infinity,
                                            width: double.infinity,
                                            decoration:BoxDecoration( color: Colors.white, borderRadius: BorderRadius.circular(30),

                                          ),
                                              child:Padding(
                                                padding: const EdgeInsets.all(12.0),
                                                child: Container(height: double.infinity,width: double.infinity,
                                                child: Image.asset("images/phone.png"),
                                                ),
                                              )
                                        )),)
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
