import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QrGenerationPage extends StatefulWidget {
  const QrGenerationPage({Key? key}) : super(key: key);

  @override
  State<QrGenerationPage> createState() => _QrGenerationPageState();
}

class _QrGenerationPageState extends State<QrGenerationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Congraulations",style: TextStyle(fontSize: 22),),
              Text("QR Code",style: TextStyle(fontSize: 22),),
            ],
          ),
        ),
      ),

    );
  }
}
