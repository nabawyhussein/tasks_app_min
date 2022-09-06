// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:labeeb_front/bloc/location_bloc/location_cubit.dart';
//
// import '../../translations/locale_keys.g.dart';
// import '../resources/assets_manger.dart';
// import '../resources/color_manger.dart';
// import '../resources/constant_manger.dart';
// import '../resources/app_size_res.dart';
// import '../resources/style_manger.dart';
// import 'common_shadow.dart';
//
// class BuildShipMeSenderWidget extends StatelessWidget {
//   const BuildShipMeSenderWidget(
//       {Key? key,
//       this.color = ColorManger.primary,
//       this.txt,
//       this.divider = false,
//       this.addressTxt})
//       : super(key: key);
//   final Color? color;
//   final String? txt;
//   final String? addressTxt;
//   final bool? divider;
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<LocationCubit, LocationState>(builder: (context, state) {
//       LocationCubit locationCubit = BlocProvider.of<LocationCubit>(context);
//       return Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(divider == true ? 0 : 12),
//           color: ColorManger.white,
//           boxShadow: [mainShadow],
//         ),
//         child: Padding(
//           padding: EdgeInsets.symmetric(
//               horizontal: AppSize.size(context).width * .04),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                     horizontal: divider == true
//                         ? AppSize.size(context).width * .05
//                         : 0),
//                 child: Transform.translate(
//                   offset: const Offset(0, -20),
//                   child: Container(
//                     margin: EdgeInsets.zero,
//                     // margin:EdgeInsets.symmetric(horizontal: AppSize.size(context).width * .035),
//                     padding: EdgeInsets.symmetric(
//                         horizontal: AppSize.size(context).width * .035,
//                         vertical: AppSize.size(context).height * .01),
//                     decoration: BoxDecoration(
//                         color: color, borderRadius: BorderRadius.circular(30)),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         SizedBox(
//                           width: AppConstant.locale == AppConstant.english
//                               ? AppSize.size(context).width * .04
//                               : AppSize.size(context).width * .05,
//                         ),
//                         divider == true
//                             ? Container(
//                                 padding: EdgeInsets.symmetric(
//                                     horizontal:
//                                         AppSize.size(context).width * .025,
//                                     vertical:
//                                         AppSize.size(context).height * .02),
//                                 decoration: const BoxDecoration(
//                                     border: Border(
//                                   right: BorderSide(
//                                     //                   <--- left side
//                                     color: ColorManger.white,
//                                     width: 3,
//                                   ),
//                                 )),
//                               )
//                             : Container(),
//                         Spacer(),
//                         Expanded(
//                             flex: 1,
//                             child: Text(
//                               txt!,
//                               style: getSemiBoldStyle(
//                                   color: ColorManger.white,
//                                   fontSize: AppSize.size(context).width * .04),
//                             )),
//                         SizedBox(
//                           width: AppSize.size(context).width * .19,
//                         ),
//                         SvgPicture.asset(AppIcons.appLocationIcon, width: 18),
//                         SizedBox(
//                           width: AppSize.size(context).width * .045,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                     horizontal: divider == true
//                         ? AppSize.size(context).width * .05
//                         : 0),
//                 child: Row(
//                   children: [
//                     const Icon(
//                       Icons.favorite,
//                       color: ColorManger.primary,
//                     ),
//                     SizedBox(
//                       width: AppSize.size(context).width * .025,
//                     ),
//                     Text(
//                       LocaleKeys.home.tr(),
//                       style: getRegularStyle(
//                           color: ColorManger.primary,
//                           fontSize: AppSize.size(context).width * .04),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 8,
//               ),
//               divider == false
//                   ? const Divider(
//                       color: ColorManger.dividerColor,
//                       thickness: 1,
//                     )
//                   : Row(
//                       children: [
//                         Expanded(
//                           flex: 2,
//                           child: Padding(
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: divider == true
//                                     ? AppSize.size(context).width * .05
//                                     : 0),
//                             child: const Divider(
//                               color: ColorManger.dividerColor,
//                               thickness: 1,
//                             ),
//                           ),
//                         ),
//                         const Icon(Icons.arrow_forward_ios),
//                       ],
//                     ),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                     horizontal: divider == true
//                         ? AppSize.size(context).width * .05
//                         : 0),
//                 child: Text(
//                   locationCubit.codedAddress!.first.addressLine!,
//                   style: getRegularRobotoStyle(
//                       color: ColorManger.darkGrey,
//                       fontSize: AppSize.size(context).width * .04),
//                 ),
//               ),
//               const SizedBox(
//                 height: 12,
//               ),
//             ],
//           ),
//         ),
//       );
//     });
//   }
// }
