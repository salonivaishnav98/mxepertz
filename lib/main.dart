import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mxepertz/BottomBar/bottonNavSc.dart';
import 'package:mxepertz/settings.dart';

import 'firebase_options.dart';
import 'nextSc.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  void initState(){
    super.initState();
    splashTime();
  }

  void splashTime(){
    Timer(const Duration(seconds: 3),() async {

      FirebaseAuth.instance.currentUser!=null?Get.offAll(BottomNavBar()): Get.offAll(()=>NextSc());
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleMedium: GoogleFonts.roboto(
            fontSize: 11,
            fontWeight: FontWeight.w900
          ),
            bodyMedium: GoogleFonts.openSans(
            fontSize: 15,
            fontWeight: FontWeight.w700,
              color:Colors.white
          )
        )
      ),
      home: HomeSc(),
    );
  }
}
class HomeSc extends StatelessWidget {
  const HomeSc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/Rectangle 1.png"),fit: BoxFit.cover)
        ),
        child: Image(image: AssetImage('assets/images/skenu-app 1.png'),),
      )
    );
  }
}

