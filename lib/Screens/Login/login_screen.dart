import 'package:demoproject/Screens/HomeScreen/homescreen_seller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: <Widget>[
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Image(
                  image: AssetImage('assets/phone1.png'),
                  height: 250.0,
                  width: 250.0,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    left: 16.0, top: 10.0, right: 16.0, bottom: 40),
                child: Text(
                  "Tap to Join Us",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 9,
                      child: TextField(
                        focusNode: FocusNode(),
                        maxLength: 10,
                        autofocus: true,
                        textAlign: TextAlign.start,
                        decoration: const InputDecoration(
                            hintText: 'Enter Mobile number'),
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.done,
                        style: const TextStyle(
                            fontSize: 20.0, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 30.0, bottom: 40.0, left: 30, right: 30),
                child: SizedBox(
                  width: double.infinity,
                  height: 45.0,
                  child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreenSeller()));
                      },
                      textColor: Colors.white,
                      color: Colors.greenAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Text(
                        "Log In",
                        style: TextStyle(fontSize: 18),
                      )),
                ),
              ),
              const Spacer(),
            ],
          ),
        ));
  }
}
