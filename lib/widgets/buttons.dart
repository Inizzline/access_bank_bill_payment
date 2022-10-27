import 'package:bank_app/utilities/colours.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  final Function( )? onTap;
  final Color? backgroundColor;
  final String? text;
  final Color? textColor;
  final IconData icon;
  final Color? iconColor;
  final double? fontsize;


  const AppButtons({Key? key,
    this.onTap,
    this.backgroundColor = AppColour.mainColor,
    this.text,
    this.textColor = AppColour.mainColor ,
    required this.icon,
    this.iconColor = Colors.white,
    this.fontsize = 20
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(icon, size: 40, color: iconColor,),
          ),
          text!= null ? Text(
            text!, style: TextStyle(
            fontSize: 10,
            color: textColor
          ),
          ) : Container()
        ],
      ),
    );
  }
}
