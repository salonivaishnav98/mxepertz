import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Image(image: AssetImage('assets/images/Plus.png'),),
          ),
        title: const Center(child: Image(image: AssetImage('assets/images/small.png'),fit: BoxFit.fitHeight,)),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Image(image: AssetImage('assets/images/msg.png'),),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: const Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/girl5 1.png',),radius: 35,
                    ),
                    SizedBox(width: 15,),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/girl5 1-2.png',),radius: 35,
                    ),
                    SizedBox(width: 15,),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/girl5 1-3.png',),radius: 35,
                    ),
                    SizedBox(width: 15,),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/girl5 1-4.png',),radius: 35,
                    ),
                    SizedBox(width: 15,),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/girl5 1-5.png',),radius: 35,
                    ),
                    SizedBox(width: 15,),
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/girl5 1.png',),radius: 35,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Column(
                children: [
                  Image(image: AssetImage('assets/images/girl.png'),height: 416,width: double.infinity,fit: BoxFit.cover,),
        
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Image(image: AssetImage('assets/images/Union.png')),
                        SizedBox(width: 10,),
                        Image(image: AssetImage('assets/images/Union-2.png')),
                        SizedBox(width: 10,),
                        Image(image: AssetImage('assets/images/Vector 9.png')),
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Image(image: AssetImage('assets/images/Rectangle 35.png'))),
                  Row(
                    children: [
                      SizedBox(width: 15,),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/girl5 1.png"),radius: 10,
                      ),
                     SizedBox(width: 10,),
                    ],
                  )
                ],
              ),
              SizedBox(height: 15,),
              Column(
                children: [
                  Image(image: AssetImage('assets/images/boy.png'),height: 416,width: double.infinity,fit: BoxFit.cover,),
        
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Image(image: AssetImage('assets/images/Union.png')),
                        SizedBox(width: 10,),
                        Image(image: AssetImage('assets/images/Union-2.png')),
                        SizedBox(width: 10,),
                        Image(image: AssetImage('assets/images/Vector 9.png')),
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Image(image: AssetImage('assets/images/Rectangle 35.png'))),
                  Row(
                    children: [
                      SizedBox(width: 15,),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/girl5 1.png"),radius: 10,
                      ),
                      SizedBox(width: 10,),
                    ],
                  )
                ],
              )
            ],
        ),
      ),
    );
  }
}
