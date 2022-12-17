import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

Widget reUseTitle({required String text, double? size, Color? color, fontW}) {
  return Text(
    text,
    style: TextStyle(fontSize: size, color: color, fontWeight: fontW),
  );
}

Widget letsGoButton(
    {required Color colorB,
    required Color colorF,
    required double fontSize,
    required BuildContext context}) {
  return InkWell(
    onTap: () => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    ),
    child: Container(
        alignment: Alignment.center,
        constraints:
            const BoxConstraints(minHeight: 50, minWidth: 120, maxWidth: 150),
        decoration: BoxDecoration(
          color: colorB,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text('Let\'s Go',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: fontSize,
                color: colorF,
                fontWeight: FontWeight.w500))),
  );
}

Widget reUseContainer(
    {required Color colorF,
    required double fontSize,
    required double width,
    required double height,
    required String text,
    Color colorb = Colors.white,
    required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colorb,
          ),
          alignment: Alignment.center,
          child: Text(text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: fontSize,
                color: colorF,
              ))),
    ),
  );
}
