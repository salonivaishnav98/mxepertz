import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mxepertz/colorFile.dart';
import 'package:mxepertz/loginSc.dart';
import 'package:mxepertz/registerSc.dart';

class NextSc extends StatelessWidget {
  const NextSc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/bg 1.png"),fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20,left: 10,right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 62,
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  Get.to(()=>const LoginSc());
                },
                    child: Text("LOG IN WITH EMAIL",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: ColorFile.Blue)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorFile.yellow,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  ),),
              ),
              SizedBox(height: 20,),
              Container(
                height: 62,
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  Get.to(()=>RegisterSc());
                },
                  child: Text("REGISTER",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorFile.Blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  ),),),
            ],
          ),
        ),
      ),
    );
  }
}
