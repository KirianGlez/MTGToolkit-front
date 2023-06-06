import 'package:flutter/material.dart';
import 'app_text.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  bool? isIcon;
  double? borderRadius;

  AppButtons( {super.key, 
  this.isIcon=false,
  this.text="",
  this.icon,
  this.borderRadius = 100,
  required this.size, 
  required this.color, 
  required this.backgroundColor, 
  required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
      borderRadius: BorderRadius.circular(borderRadius!),
        color: backgroundColor
    ),
    child: isIcon==false?Center(child: AppText(text: text!, color:Colors.black)):Center(child: Icon(icon, color:color)),
    );
  }
}