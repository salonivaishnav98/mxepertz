import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mxepertz/BottomBar/profileSetting.dart';

import '../colorFile.dart';

class UserSc extends StatelessWidget {

   UserSc({super.key,});

  @override
  Widget build(BuildContext context) {


    // String? uName = FirebaseAuth.instance.currentUser!.displayName;

    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        backgroundColor: ColorFile.yellow,

        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Text("Jane doe",style: GoogleFonts.roboto(fontSize:25,color:Colors.black,fontWeight:FontWeight.w400),),

                  SizedBox(height: 20,),

                      Text('Post',style: GoogleFonts.roboto(fontSize:16,color:Colors.black,fontWeight:FontWeight.w400),),

                  SizedBox(height: 20,),

                      Text('Archieve',style: GoogleFonts.roboto(fontSize:16,color:Colors.black,fontWeight:FontWeight.w400),),

                  SizedBox(height: 20,),

                      Text('Your Activity',style: GoogleFonts.roboto(fontSize:16,color:Colors.black,fontWeight:FontWeight.w400),),

                  SizedBox(height: 20,),

                  Text('QR code',style: GoogleFonts.roboto(fontSize:16,color:Colors.black,fontWeight:FontWeight.w400),),

                  SizedBox(height: 20,),

                  Text('Saved',style: GoogleFonts.roboto(fontSize:16,color:Colors.black,fontWeight:FontWeight.w400),),
                  SizedBox(height: 20,),

                  Text('Discover People',style: GoogleFonts.roboto(fontSize:16,color:Colors.black,fontWeight:FontWeight.w400),),
                ],
              ),
            ),
            const Divider(

              //height: 200,
            ),
             InkWell(
               onTap: (){
                  Get.to(()=>ProfileSetting());
               },
               child: Row(
                children: [
                    Image(image: AssetImage('assets/images/setting.png'),),
                  SizedBox(width: 10,),
                  Text("Settings",style: GoogleFonts.roboto(fontSize:16,color:Colors.black,fontWeight:FontWeight.w400))


                ],
                           ),
             )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/girl.png'),radius: 80,
                ),
                SizedBox(width: 10,),
                Row(
                  children: [
                    Column(
                      children: [
                        Text('Following',style: GoogleFonts.roboto(fontSize:15,color:Colors.black,fontWeight:FontWeight.w400),),
                        SizedBox(height: 10,),
                        Text('0',style: GoogleFonts.roboto(fontSize:15,color:Colors.black,fontWeight:FontWeight.w400))
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Text('Followers',style: GoogleFonts.roboto(fontSize:15,color:Colors.black,fontWeight:FontWeight.w400),),
                        SizedBox(height: 10,),
                        Text('0',style: GoogleFonts.roboto(fontSize:15,color:Colors.black,fontWeight:FontWeight.w400))
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Text('Post',style: GoogleFonts.roboto(fontSize:15,color:Colors.black,fontWeight:FontWeight.w400),),
                        SizedBox(height: 10,),
                        Text('0',style: GoogleFonts.roboto(fontSize:15,color:Colors.black,fontWeight:FontWeight.w400))
                      ],
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Jane doe",style: GoogleFonts.roboto(fontSize:22,color:Colors.black,fontWeight:FontWeight.w400)),
            ),
            SizedBox(height: 20,),
            Container(
              height: 62,
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Get.to(()=>());
              },
                child: Text("Edit profile",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorFile.Blue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                ),),),

            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  Image(image: AssetImage('assets/images/video-profile.png')),
                  Image(image: AssetImage('assets/images/yellowHeart.png')),
                  Image(image: AssetImage('assets/images/private-video.png')),
              ],
            ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage('assets/images/Rectangle 46.png')),
                Image(image: AssetImage('assets/images/Rectangle 46.png')),
                Image(image: AssetImage('assets/images/Rectangle 46.png')),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage('assets/images/Rectangle 46.png')),
                Image(image: AssetImage('assets/images/Rectangle 46.png')),
                Image(image: AssetImage('assets/images/Rectangle 46.png')),
              ],
            ),

          ],
        ),
      )
    );
  }
}
