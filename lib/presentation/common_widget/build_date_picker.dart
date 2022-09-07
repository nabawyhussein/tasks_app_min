import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taskmina/presentation/resources/app_size_res.dart';

import '../resources/color_manger.dart';
import 'build_text.dart';

class BuildDatePicker extends StatelessWidget {
  BuildDatePicker({
    Key? key,
    this.width,
    required this.headerTxt,
    required this.textController,
  }) : super(key: key);
  final String headerTxt;
  final double? width;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width??AppSize.size(context).width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildText(
            txt: headerTxt,
            fontSize: AppSize.size(context).width*0.045,
            fontWeight: FontWeight.w700,
            color: ColorManger.primarySecondColor,
          ),
          Container(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              width: width ?? AppSize.size(context).width * 0.85,
              // height: Constant.size(context).height * 0.06,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                // boxShadow: [commonShadow]
              ),
              child: DateTimePicker(
                type: DateTimePickerType.date,
                firstDate: DateTime.now(),
                lastDate: DateTime(2100),
                controller: textController,
                textAlign: TextAlign.start,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    disabledBorder:UnderlineInputBorder(
                      borderSide:  BorderSide(color: ColorManger.primarySecondColor,
                        width: 2
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:  BorderSide(color: ColorManger.primarySecondColor,
                          width: 2
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:  BorderSide(color: ColorManger.primarySecondColor,
                          width: 2
                      ),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide:  BorderSide(color: ColorManger.error,
                          width: 2),
                    ),

                ),
                onChanged: (val){
                  final taskDayName = DateFormat('EEEE').format(DateTime.parse(val));
                  final currentMonthName = DateFormat('MMM').format(DateTime.parse(val));
                  final todayNum = val.substring(5,7);
                  textController.text= taskDayName+", "+todayNum+" "+currentMonthName;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter Correct Data";
                  }

                  return null;
                },
              )),
        ],
      ),
    );
  }
}
