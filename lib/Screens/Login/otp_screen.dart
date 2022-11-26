import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:sms_autofill/sms_autofill.dart';

class OtpScreen extends StatefulWidget {

  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  bool isLoading=true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body:!isLoading? Column(
        children: <Widget>[
          const Spacer(flex: 1),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 56.0),
                child: Text("Verifying your number !", style: TextStyle(
                    fontSize: 22.0, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 16.0, top: 8.0, right: 16.0),
                child: Text(
                  "Please type the verification code sent to",
                  style: TextStyle(
                      fontSize: 17.0, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 30.0, top: 5.0, right: 30.0),
                child: Text(
                  "",
                  style: TextStyle(
                      fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.greenAccent),
                  textAlign: TextAlign.center,),
              ),

              Padding(
                padding: EdgeInsets.only(top: 16.0,bottom: 00),
                child: Image(
                  image: AssetImage('assets/Image/otp-icon.png'),
                  height: 150.0,
                  width: 150.0,),
              )
            ],
          ),
          const Spacer(flex: 1,),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              // child: PinFieldAutoFill(
              //   codeLength: 6,
              //   focusNode: FocusNode(),
              //   keyboardType: TextInputType.number,
              //   autoFocus: true,
              //   currentCode: "",
              //   decoration: const BoxLooseDecoration(
              //       textStyle: TextStyle(color: Colors.black),
              //       radius: Radius.circular(5),
              //       strokeColorBuilder: FixedColorBuilder(Colors.greenAccent)),
              //   onCodeChanged: (pin) {
              //     if (pin!.length == 6) {
              //     }
              //   },
              // ),
            ),
          ),
          const Spacer(flex: 5),
        ],
      ):const Center(
        child: CircularProgressIndicator(),
      ),

    );
  }
}
