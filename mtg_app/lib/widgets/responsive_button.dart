import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mtg_app/misc/colors.dart';
import 'package:mtg_app/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  String? text;
  ResponsiveButton({super.key, this.width, this.isResponsive=false, this.text = ""});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive==true?double.maxFinite:width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor
        ),
        child: Row(
          mainAxisAlignment: isResponsive==true?MainAxisAlignment.spaceAround:MainAxisAlignment.center,
          children: [
            isResponsive==true?Container(margin:const EdgeInsets.only(left: 20), child: AppText(text: text!, color:Colors.white)):Container(),
            Icon(CupertinoIcons.chevron_right_2, color: Colors.white),
          ],
        )
      ),
    );
  }
}