import 'controller/work_today_controller.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/widgets/custom_elevated_button.dart';
import 'package:todo/widgets/custom_icon_button.dart';

class WorkTodayScreen extends GetWidget<WorkTodayController> {
  const WorkTodayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 43.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          onTap: () {
                            onTapBtnArrowleftone();
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleftBlack900)),
                      SizedBox(height: 79.v),
                      Text("lbl_work_today_s2".tr,
                          style: theme.textTheme.headlineMedium),
                      SizedBox(height: 7.v),
                      Text("msg_make_your_job_easier".tr,
                          style: theme.textTheme.labelLarge),
                      SizedBox(height: 78.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 6.v, bottom: 2.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lbl_today".tr,
                                          style: CustomTextStyles
                                              .titleSmallBlack900),
                                      SizedBox(height: 5.v),
                                      Text("lbl_02_april_2021".tr,
                                          style: CustomTextStyles
                                              .titleMediumBlack900)
                                    ])),
                            CustomIconButton(
                                height: 58.v,
                                width: 60.h,
                                padding: EdgeInsets.all(17.h),
                                decoration: IconButtonStyleHelper.fillGray,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgCalendar))
                          ]),
                      SizedBox(height: 59.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 27.h, vertical: 15.v),
                          decoration: AppDecoration.fillWhiteA,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 26.v,
                                    width: 28.h,
                                    decoration: BoxDecoration(
                                        color: theme
                                            .colorScheme.secondaryContainer
                                            .withOpacity(0.2),
                                        borderRadius:
                                            BorderRadius.circular(6.h))),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 13.h, top: 3.v, bottom: 2.v),
                                    child: Text("msg_research_product".tr,
                                        style: theme.textTheme.bodyMedium)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowicon,
                                    height: 5.v,
                                    width: 3.h,
                                    margin:
                                        EdgeInsets.symmetric(vertical: 10.v))
                              ])),
                      SizedBox(height: 5.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 27.h, vertical: 15.v),
                          decoration: AppDecoration.fillWhiteA,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 26.v,
                                    width: 28.h,
                                    decoration: BoxDecoration(
                                        color: theme
                                            .colorScheme.secondaryContainer
                                            .withOpacity(0.2),
                                        borderRadius:
                                            BorderRadius.circular(6.h))),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 13.h, top: 6.v),
                                    child: Text("msg_create_action_plan".tr,
                                        style: theme.textTheme.bodyMedium)),
                                Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowicon,
                                    height: 5.v,
                                    width: 3.h,
                                    margin:
                                        EdgeInsets.symmetric(vertical: 10.v))
                              ])),
                      SizedBox(height: 90.v),
                      CustomElevatedButton(
                          text: "msg_make_a_wish_list".tr,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumWhiteA700,
                          onTap: () {
                            onTapMakeawish();
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapBtnArrowleftone() {
    Get.back();
  }

  /// Navigates to the signupScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the signupScreen.
  onTapMakeawish() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }
}
