import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mxepertz/colorFile.dart';
import 'package:mxepertz/main.dart';
import 'package:mxepertz/settings.dart';

class LoginSc extends StatefulWidget {
  const LoginSc({super.key});

  @override
  State<LoginSc> createState() => _LoginScState();
}

class _LoginScState extends State<LoginSc> {

  final emailController = TextEditingController();
  final passController = TextEditingController();

  void checkUser()async{
    try{
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text.trim(), password: passController.text.trim());
      if(userCredential.user != null){
        Get.offAll(()=> Settings());
      }else{
        Get.snackbar("Error", "Invalid credentials");
      }
    }catch(e){
      print("error...................$e");
      Get.snackbar("Error", "Something went wrong");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/bg 1.png"),fit: BoxFit.cover)
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/Rectangle 30.png"),fit: BoxFit.cover)
          ),
          child: Center(
            child: Container(
              height: 441,
              width: 358,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Colors.white
              ),
              child:  Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    const Text("Sign in to your account"),
                    const SizedBox(height: 40,),
                    TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 11,color: Colors.black.withOpacity(0.5),fontWeight: FontWeight.w400),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: ColorFile.yellow,width: 2), // Set border color here
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: ColorFile.yellow), // Set focused border color here
                          ),)
                      ),
                    const SizedBox(height: 20,),
                    TextField(
                      controller: passController,
                      keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 11,color: Colors.black.withOpacity(0.5),fontWeight: FontWeight.w400),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: ColorFile.yellow,width: 2), // Set border color here
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: ColorFile.yellow), // Set focused border color here
                          ),)
                      ),
                    const SizedBox(height: 30,),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){
                        checkUser();
                      },
                        child: Text("LOG IN",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: ColorFile.yellow)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorFile.Blue,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                        ),),),
                    const SizedBox(height: 10,),
                    TextButton(onPressed: ()async{

                    }, child: Text("FORGET PASSWORD",style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w300,color: Colors.black.withOpacity(0.4),fontSize: 10),))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
