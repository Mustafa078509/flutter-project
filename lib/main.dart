import 'package:flutter/material.dart';
import 'package:untitled/screen/Product2.dart';
import 'package:untitled/screen/Special%20offer.dart';
import 'package:untitled/screen/abouts.dart';
import 'package:untitled/screen/details.dart';
import 'package:untitled/screen/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:untitled/screen/ui%20screen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
   runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),


    initialRoute: '/',
      routes: {

        'Home':(context) => const home(),
        'Special':(context) => const Special(),
        'Abouts':(context) => const Abouts(),
        'Product1':(context) =>const Product1(),
        'Product2':(context) => const Product2(),


      },

    );




  }
}
