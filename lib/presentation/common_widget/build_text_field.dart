import 'package:flutter/material.dart';

class BuildTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? textInputType;
  final GestureTapCallback? onTap;
  final String? labelText;
  final TextAlign? textAlign;

  const BuildTextField({
    Key? key,
    this.controller,
    this.validator,
    this.textInputType,
    this.onTap,
    this.textAlign = TextAlign.start,
    this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        keyboardType: textInputType,
        textAlign: textAlign!,
        decoration: InputDecoration(
          border: InputBorder.none,
          // enabledBorder: showBorders!?null:InputBorder.none,
          // disabledBorder:showBorders!?null:InputBorder.none,
          // focusedBorder:showBorders!?null:InputBorder.none,
          // filled: true,
          // fillColor: fillColor??ColorManger.fillBackGroundColor.withOpacity(.5),
          contentPadding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          hintText: "$labelText",
        ),
        validator: validator);
  }
}
