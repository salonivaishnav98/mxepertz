import 'package:flutter/material.dart';

class ShareTap extends StatelessWidget {
  const ShareTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/girl-dancing 1.png'),fit: BoxFit.fill)
        ),
           // Image(image: AssetImage('assets/images/girl-dancing 1.png'),fit: BoxFit.fill)
      ),
    );
  }
}
