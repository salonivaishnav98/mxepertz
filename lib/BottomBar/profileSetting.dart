import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mxepertz/colorFile.dart';
import 'package:mxepertz/nextSc.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorFile.Blue,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: ColorFile.Blue,
        title: Text("Profile Settings",style: GoogleFonts.roboto(fontSize:22,color:Colors.white,fontWeight:FontWeight.w400),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Account settings',style: GoogleFonts.roboto(fontSize:20,color:ColorFile.yellow,fontWeight:FontWeight.w400)),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(0,21,51,1),
                borderRadius: BorderRadius.circular(4)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Personal account',style: GoogleFonts.roboto(fontSize:20,color:Colors.white,fontWeight:FontWeight.w400)),
              ),
            ),

            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0,21,51,1),
                  borderRadius: BorderRadius.circular(4)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Share Profile',style: GoogleFonts.roboto(fontSize:20,color:Colors.white,fontWeight:FontWeight.w400)),
              ),
            ),

            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0,21,51,1),
                  borderRadius: BorderRadius.circular(4)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Privacy',style: GoogleFonts.roboto(fontSize:20,color:Colors.white,fontWeight:FontWeight.w400)),
              ),
            ),

            SizedBox(height: 30,),

            Text('Help & Support',style: GoogleFonts.roboto(fontSize:20,color:ColorFile.yellow,fontWeight:FontWeight.w400)),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0,21,51,1),
                  borderRadius: BorderRadius.circular(4)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Business account',style: GoogleFonts.roboto(fontSize:20,color:Colors.white,fontWeight:FontWeight.w400)),
              ),
            ),

            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0,21,51,1),
                  borderRadius: BorderRadius.circular(4)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Reports',style: GoogleFonts.roboto(fontSize:20,color:Colors.white,fontWeight:FontWeight.w400)),
              ),
            ),

            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0,21,51,1),
                  borderRadius: BorderRadius.circular(4)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Help',style: GoogleFonts.roboto(fontSize:20,color:Colors.white,fontWeight:FontWeight.w400)),
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              FirebaseAuth.instance.signOut().then((value) => Get.offAll(()=>NextSc()));
            }, child:
            Text('Log out',
                style: GoogleFonts.roboto(
                    fontSize:22,
                    color:ColorFile.yellow,
                    fontWeight:FontWeight.w700)),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,elevation: 0),)
          ],
        ),
      ),
    );
  }
}
