import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Constants/my_colors.dart';
import '../Theme/theme.dart';
import 'Login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    checkLogin(context);
    return Scaffold(
      backgroundColor: MyColors.myAppbarColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Dicker Deals",
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold,color: Colors.white),
            ),
            SizedBox(height: 50,),
            CircularProgressIndicator(color: Colors.white,)
          ],
        ),
      ),
    );
  }
  checkLogin(BuildContext context)async{
      Future.delayed(const Duration(milliseconds: 3000), () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      });
  }
}
