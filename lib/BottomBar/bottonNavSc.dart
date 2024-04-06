
import 'package:flutter/material.dart';
import 'package:mxepertz/BottomBar/dashboard.dart';
import 'package:mxepertz/BottomBar/likeApp.dart';
import 'package:mxepertz/BottomBar/shareTap.dart';
import 'package:mxepertz/colorFile.dart';
import 'comments.dart';
import 'userSc.dart';

class BottomNavBar extends StatefulWidget {

  BottomNavBar({super.key});
   //const BottomNavBar({super.key, this.username, this.email, this.uniqueId,this.proPic});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {


    final screen = [
      DashboardPage(),
      LikeSC(),
      ShareTap(),
      CommentsSc(),
      UserSc(),
    ];

    return Scaffold(

      body: screen[_currentIndex],

      bottomNavigationBar: Container(
        height: 80,
        color: Colors.white,
        width: double.infinity,

        child: BottomNavigationBar(
          //type: BottomNavigationBarType.fixed,

          backgroundColor: Colors.white,
          selectedItemColor: ColorFile.yellow,
          unselectedItemColor: Color.fromRGBO(51, 51, 51, 1),


          currentIndex: _currentIndex,

          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/home-hover.png")),
                label: ""
            ),

            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/Union.png")),
                label: ""

            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/Vector 9.png")),
                label: ""

            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/Union-2.png")),
                label: ""

            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
                icon: ImageIcon(AssetImage("assets/images/person.png")),
              label: ""
            ),
          ],
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
