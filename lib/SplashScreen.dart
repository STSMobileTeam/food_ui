import 'package:flutter/material.dart';
import 'package:food_ui/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _movetonextscreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('assets/images/logo.png',height: 300,width: 300,)),
    );
  }

  _movetonextscreen() async {
    await Future.delayed(Duration(seconds: 2));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Homescreen()),
    );
  }

}
