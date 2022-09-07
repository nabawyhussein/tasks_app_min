import 'package:flutter/material.dart';

import '../resources/app_size_res.dart';
import '../resources/color_manger.dart';
import 'build_text.dart';

class TimePickerBuilder extends StatefulWidget {
  final TextEditingController controller;
  final GestureTapCallback? onTap;
  final String? hintTxt;
  final ValueChanged? onChange;
  final String headerTxt;
  final double? width;
  TimePickerBuilder({
    required this.controller,
    this.onTap,
    this.width,
    this.hintTxt = "",
    required this.headerTxt,
    this.onChange,
  });

  @override
  State<TimePickerBuilder> createState() => _TimePickerBuilderState();
}

class _TimePickerBuilderState extends State<TimePickerBuilder> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showTimePick(widget.controller);
      },
      child: SizedBox(
        width: widget.width??AppSize.size(context).width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BuildText(
              txt: widget.headerTxt,
              fontSize: AppSize.size(context).width*0.045,
              fontWeight: FontWeight.w700,
              color: ColorManger.primarySecondColor,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(widget.controller.text),
                ),
                Icon(Icons.keyboard_arrow_down,color: ColorManger.primarySecondColor,)
              ],
            ),
            const Divider(color: ColorManger.primarySecondColor,thickness: 2,)
          ],
        ),
      ),
    );
  }

  Future<void> showTimePick(TextEditingController selectedTime) async {
    final TimeOfDay? result = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),

    );
    if (result != null) {
      setState(() {
        selectedTime.text = result.format(context);
      });
    }
  }
}
