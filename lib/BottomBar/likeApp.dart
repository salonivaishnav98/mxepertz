import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colorFile.dart';

class LikeSC extends StatelessWidget {
  const LikeSC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,

        title: Center(child: Text("All Activity",style: GoogleFonts.openSans(fontSize:20,fontWeight:FontWeight.w700,color:Colors.black),)),
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text('New',style: GoogleFonts.roboto(fontSize:20,fontWeight:FontWeight.w400,color:Colors.black),),

          ],
        ),
      ),
    );
  }
}
