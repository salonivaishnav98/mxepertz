import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mxepertz/BottomBar/dashboard.dart';
import 'package:mxepertz/colorFile.dart';

import 'BottomBar/bottonNavSc.dart';

class Settings extends StatefulWidget {

  Settings({super.key,});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  int selectedButtonIndex = -1;


  List oftext = [
    "Language",
    'Privacy',
    'Term',
    "Help"
  ];

  List ofimg = [
    'assets/images/support1.png',
    'assets/images/support1.png',
    'assets/images/support1.png',
    'assets/images/support1.png',
  ];

  int length=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/images/bg 1.png"),fit: BoxFit.cover)
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 510,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(22),topLeft: Radius.circular(23)),
                color: ColorFile.Blue
              ),
              child: const Padding(
                padding: EdgeInsets.only(top: 30,left: 30,right: 30,bottom: 30),
                child: Column(
                  children: [
                    SelectableButtonList()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
class SelectableButtonList extends StatefulWidget {
  const SelectableButtonList({super.key});

  @override
  SelectableButtonListState createState() => SelectableButtonListState();
}

class SelectableButtonListState extends State<SelectableButtonList> {
  int selectedButtonIndex = -1; // Initially no button is selected

  List<ButtonItem> buttonItems = [
    ButtonItem(text: 'Language', img: 'assets/images/language.png'),
    ButtonItem(text: 'Privacy Policy', img: 'assets/images/privacy.png'),
    ButtonItem(text: 'Terms Of Use', img: 'assets/images/terms.png'),
    ButtonItem(text: 'Help & Support', img: 'assets/images/support1.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(
        buttonItems.length,
            (index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: SelectableButton(
            item: buttonItems[index],
            isSelected: selectedButtonIndex == index,
            onPressed: () {
              setState(() {
                selectedButtonIndex = index;
                Get.off(BottomNavBar());
              });
            },
          ),
        ),
      ),
    );
  }
}

class ButtonItem {
  final String text;
  final String img;

  ButtonItem({required this.text, required this.img});
}

class SelectableButton extends StatelessWidget {
  final ButtonItem item;
  final bool isSelected;
  final VoidCallback onPressed;

  const SelectableButton({super.key,
    required this.item,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: isSelected ? ColorFile.yellow : const Color.fromRGBO(0, 21, 51, 1),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: SizedBox(
          height: 40,
          width: double.infinity,
          child: Row(
            children: [
              Image(image: AssetImage(item.img),height: 40,width: 37,),
              const SizedBox(width: 8.0),
              Text(
                item.text,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
