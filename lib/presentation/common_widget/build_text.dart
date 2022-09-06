import 'package:flutter/material.dart';

class BuildText extends StatelessWidget {
  const BuildText(
      {Key? key,
        required this.txt,
        required this.fontSize,
        this.color = Colors.black,
        this.fontWeight,})
      : super(key: key);
  final String? txt;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt!,
      style: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight,),
    );
  }
}
