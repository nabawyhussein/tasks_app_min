import 'package:flutter/material.dart';
import 'package:taskmina/data/local_dummy_data/tasks_categories_data.dart';

import '../../../common_widget/build_text.dart';
import '../../../resources/app_size_res.dart';
import '../../../resources/color_manger.dart';

class SelectCategoryWidget extends StatelessWidget {
  const SelectCategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppSize.size(context).height * 0.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BuildText(
              txt: 'Select Category',
              fontSize: AppSize.size(context).width * 0.045,
              fontWeight: FontWeight.bold,
              color: ColorManger.primarySecondColor,
            ),
            BuildText(
              txt: "see all",
              fontSize: AppSize.size(context).width * 0.04,
              color: ColorManger.primarySecondColor,
              fontWeight: FontWeight.w600,
            ),
          ],
        ),
        SizedBox(
          height: AppSize.size(context).height * 0.02,
        ),
        SizedBox(
          height: AppSize.size(context).height * 0.045,
          child: ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: CategoriesData.tasksCategoryList.length,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      right: AppSize.size(context).width * 0.04),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.size(context).width * 0.04,
                  ),
                  decoration: BoxDecoration(
                      color: index == 0 ? ColorManger.primary : Colors.white,
                      borderRadius: BorderRadius.circular(
                        AppSize.size(context).width * 0.035,
                      ),
                      border: Border.all(color: ColorManger.primary)),
                  child: BuildText(
                    txt: CategoriesData.tasksCategoryList[index].categoryName,
                    fontSize: AppSize.size(context).width * 0.04,
                    fontWeight: FontWeight.w600,
                    color: index != 0
                        ? ColorManger.primarySecondColor
                        : Colors.white,
                  ),
                );
              }),
        ),
        SizedBox(
          height: AppSize.size(context).height * 0.03,
        ),
      ],
    );
  }
}
