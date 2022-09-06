import 'package:flutter/material.dart';

class TimpePickerBuilder extends StatefulWidget {
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final GestureTapCallback? onTap;
  final String? hintTxt;
  final ValueChanged? onChange;

  TimpePickerBuilder({
    this.validator,
    this.controller,
    this.onTap,
    this.hintTxt = "",
    this.onChange,
  });

  @override
  State<TimpePickerBuilder> createState() => _TimpePickerBuilderState();
}

class _TimpePickerBuilderState extends State<TimpePickerBuilder> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * .045, vertical: size.height * .008),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  showTimePick(widget.controller!);
                },
                child: Center(child: Text(widget.controller!.text)),
              ),
            )
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
