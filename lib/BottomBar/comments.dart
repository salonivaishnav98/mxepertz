import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colorFile.dart';

class CommentsSc extends StatelessWidget {
  const CommentsSc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,

        title: Center(child: Text("Comment",style: GoogleFonts.openSans(fontSize:20,fontWeight:FontWeight.w700,color:Colors.black),)),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            color: ColorFile.yellow, // Set the background color of the Container
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0), // Set the desired radius for bottom left corner
              bottomRight: Radius.circular(10.0), // Set the desired radius for bottom right corner
            ),
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 10),
        child: Column(
          children: [
            ListTile(
              leading:CircleAvatar(
                backgroundImage: AssetImage('assets/images/Mask Group.png'),radius: 30,
              ),
              title: Text('ronaldferguson',style: TextStyle(fontSize: 18,color: Color.fromRGBO(0,0,0,1),wordSpacing: 5,fontWeight: FontWeight.w700)),
              subtitle: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum ',style: TextStyle(fontSize: 10,color: Color.fromRGBO(51,51,51,1),wordSpacing: 5,fontWeight: FontWeight.w400),),
              trailing: Text("5min ago",style: TextStyle(fontSize: 12,color: Color.fromRGBO(0,0,0,0.5),wordSpacing: 5,fontWeight: FontWeight.w400)),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading:CircleAvatar(
                backgroundImage: AssetImage('assets/images/Mask Group-2.png'),radius: 30,
              ),
              title: Text('ronaldferguson',style: TextStyle(fontSize: 18,color: Color.fromRGBO(0,0,0,1),wordSpacing: 5,fontWeight: FontWeight.w700)),
              subtitle: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum ',style: TextStyle(fontSize: 10,color: Color.fromRGBO(51,51,51,1),wordSpacing: 5,fontWeight: FontWeight.w400),),
              trailing: Text("5min ago",style: TextStyle(fontSize: 12,color: Color.fromRGBO(0,0,0,0.5),wordSpacing: 5,fontWeight: FontWeight.w400)),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading:CircleAvatar(
                backgroundImage: AssetImage('assets/images/Mask Group-3.png'),radius: 30,
              ),
              title: Text('ronaldferguson',style: TextStyle(fontSize: 18,color: Color.fromRGBO(0,0,0,1),wordSpacing: 5,fontWeight: FontWeight.w700)),
              subtitle: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum ',style: TextStyle(fontSize: 10,color: Color.fromRGBO(51,51,51,1),wordSpacing: 5,fontWeight: FontWeight.w400),),
              trailing: Text("5min ago",style: TextStyle(fontSize: 12,color: Color.fromRGBO(0,0,0,0.5),wordSpacing: 5,fontWeight: FontWeight.w400)),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading:CircleAvatar(
                backgroundImage: AssetImage('assets/images/Mask Group-4.png'),radius: 30,
              ),
              title: Text('ronaldferguson',style: TextStyle(fontSize: 18,color: Color.fromRGBO(0,0,0,1),wordSpacing: 5,fontWeight: FontWeight.w700)),
              subtitle: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum ',style: TextStyle(fontSize: 10,color: Color.fromRGBO(51,51,51,1),wordSpacing: 5,fontWeight: FontWeight.w400),),
              trailing: Text("5min ago",style: TextStyle(fontSize: 12,color: Color.fromRGBO(0,0,0,0.5),wordSpacing: 5,fontWeight: FontWeight.w400)),
            ),

          ],
        ),
      ),
    );
  }
}
