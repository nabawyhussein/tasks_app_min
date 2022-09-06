import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:taskmina/presentation/resources/app_size_res.dart';

class BuildDatePicker extends StatelessWidget {
  BuildDatePicker({
    Key? key,
    this.labelTxt,
    this.width,
    this.onChange,
    required this.textController,
  }) : super(key: key);
  String? labelTxt;
  final double? width;
  final TextEditingController? textController;
  final ValueChanged? onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        alignment: Alignment.center,
        width: width ?? AppSize.size(context).width * 0.85,
        // height: Constant.size(context).height * 0.06,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          // boxShadow: [commonShadow]
        ),
        child: DateTimePicker(
          type: DateTimePickerType.date,
          firstDate: DateTime(1900),
          lastDate: DateTime(2100),
          controller: textController,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: labelTxt,
              hintStyle: const TextStyle(
                color: Colors.red,
              )),
          onChanged: onChange,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "qqqqqqqqqqqqqqqqq";
            }
            return null;
          },
        ));
  }
}
