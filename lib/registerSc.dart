import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mxepertz/colorFile.dart';
import 'package:mxepertz/loginSc.dart';

class RegisterSc extends StatefulWidget {
  const RegisterSc({super.key});

  @override
  State<RegisterSc> createState() => _RegisterScState();
}

class _RegisterScState extends State<RegisterSc> {

  final emailController = TextEditingController();
  final uNameController = TextEditingController();
  final passController = TextEditingController();
  final rePassController = TextEditingController();

  bool isChecked = false;

  void createuser() async{

    try{
      String email = emailController.text.trim();
      String pass = passController.text.trim();
      uNameController.text.trim();
      UserCredential userCred = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: pass);
      if(userCred.user != null){
        Get.offAll(()=>const LoginSc());
      }else{
        Get.snackbar("Error", "Something went wrong");
      }
    }
    catch(e){
      Get.snackbar("Error","$e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorFile.Blue,

        title: Center(child: Text("Register with skenu",style: GoogleFonts.openSans(fontSize:20,fontWeight:FontWeight.w700,color:Colors.black),)),
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
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: ColorFile.Blue,
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            children: [
                TextField(
                  controller: uNameController,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: Theme.of(context).textTheme.bodyMedium,
                      filled: true,
                      fillColor: const Color.fromRGBO(0,21,51,1),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10.0), // Optional: Adjust text field content padding
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none, // Hide the border
                        borderRadius: BorderRadius.circular(4.0),
                        // Set the desired radius
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: ColorFile.green,width: 4), // Set focused border color here
                      ),
                      )
                ),
              const SizedBox(height: 45,),
              TextField(
                controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: Theme.of(context).textTheme.bodyMedium,
                    filled: true,
                    fillColor: const Color.fromRGBO(0,21,51,1),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10.0), // Optional: Adjust text field content padding
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none, // Hide the border
                      borderRadius: BorderRadius.circular(4.0),
                      // Set the desired radius
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: ColorFile.green,width: 4), // Set focused border color here
                    ),
                  )
              ),
              const SizedBox(height: 45,),
              TextField(
                controller: passController,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: Theme.of(context).textTheme.bodyMedium,
                    filled: true,
                    fillColor: const Color.fromRGBO(0,21,51,1),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10.0), // Optional: Adjust text field content padding
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none, // Hide the border
                      borderRadius: BorderRadius.circular(4.0),
                      // Set the desired radius
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: ColorFile.green,width: 4), // Set focused border color here
                    ),
                  )
              ),
              const SizedBox(height: 45,),
              TextField(
                controller: rePassController,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Confirm password",
                    hintStyle: Theme.of(context).textTheme.bodyMedium,
                    filled: true,
                    fillColor: const Color.fromRGBO(0,21,51,1),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10.0), // Optional: Adjust text field content padding
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none, // Hide the border
                      borderRadius: BorderRadius.circular(4.0),
                      // Set the desired radius
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: ColorFile.green,width: 4), // Set focused border color here
                    ),
                  )
              ),
              const SizedBox(height: 35,),
              Row(
                children: [
                  Container(
                    height: 15,
                    width: 15,
                    color: const Color.fromRGBO(196,196,196,1),
                    child: Checkbox(value: isChecked, onChanged: (value){
                      setState((){
                        isChecked = value!;
                      });
                    }),
                  ),
                  const SizedBox(width: 10,),
                  Text("Agree terms and condition",style: Theme.of(context).textTheme.bodyMedium,)
                ]
              ),
              const SizedBox(height: 30,),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(onPressed: (){

                  if(passController.text.isEmpty || uNameController.text.isEmpty || emailController.text.isEmpty || rePassController.text.isEmpty) {
                    Get.snackbar("", "Please fill all the field");
                  }
                  else{
                    if (passController.text != rePassController.text) {
                      Get.snackbar("", "Password didn't match");
                    }else{
                      if(isChecked==false){
                        Get.snackbar("Error", "Please agree terms and conditions",backgroundColor: Colors.orange);
                      }else {
                        createuser();
                      }
                    }
                  }
                },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(0,21,51,1),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  ),
                  child: Text("Register",style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20)),),),
            ],
          ),
        ),
      ),
    );
  }
}
