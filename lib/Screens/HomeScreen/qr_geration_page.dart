import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Theme/theme.dart';

class QrGenerationPage extends StatefulWidget {
  const QrGenerationPage({Key? key}) : super(key: key);

  @override
  State<QrGenerationPage> createState() => _QrGenerationPageState();
}

class _QrGenerationPageState extends State<QrGenerationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myGreyMid4,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Image(
                  image: AssetImage('assets/sucess.gif'),
                  height: 250.0,
                  width: 250.0,
                ),
              ),
              Text("QR Code",style: TextStyle(fontSize: 22),),
            ],
          ),
        ),
      ),

    );
  }
}
