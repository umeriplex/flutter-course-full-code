import 'dart:async';

import 'package:all_shared_preference/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    isLogin();
  }

  void isLogin() async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool check = sp.getBool('islogin') ?? false;
    if(check==true){
      Timer(const Duration(seconds: 5),(){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
      });
    }else{
      Timer(const Duration(seconds: 5),(){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    body: Image(
      height: double.infinity,
      fit: BoxFit.fill,
      image: NetworkImage('https://images.pexels.com/photos/14840714/pexels-photo-14840714.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    ),
    );
  }
}
