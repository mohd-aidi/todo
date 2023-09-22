import 'controller/language_controller.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/widgets/custom_elevated_button.dart';
import 'package:todo/widgets/custom_icon_button.dart';

class LanguageScreen extends GetWidget<LanguageController> {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 43.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          onTap: () {
                            onTapBtnArrowleftone();
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      Padding(
                          padding: EdgeInsets.only(top: 82.v),
                          child: Text("lbl_language".tr,
                              style: theme.textTheme.headlineMedium)),
                      Padding(
                          padding: EdgeInsets.only(top: 7.v),
                          child: Text("msg_your_settings_so".tr,
                              style: theme.textTheme.labelLarge)),
                      CustomElevatedButton(
                          text: "lbl_indonesian2".tr,
                          margin: EdgeInsets.only(top: 86.v),
                          buttonStyle: CustomButtonStyles.fillDeepOrange,
                          buttonTextStyle:
                              CustomTextStyles.labelLargeSecondaryContainer,
                          onTap: () {
                            onTapIndonesian();
                          }),
                      CustomElevatedButton(
                          text: "lbl_english".tr,
                          margin: EdgeInsets.only(top: 14.v),
                          buttonStyle: CustomButtonStyles.fillGray,
                          buttonTextStyle:
                              CustomTextStyles.labelLargeDeeppurpleA400),
                      Spacer(),
                      SizedBox(height: 53.v),
                      CustomElevatedButton(
                          text: "lbl_save".tr,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumWhiteA700,
                          onTap: () {
                            onTapSave();
                          })
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapBtnArrowleftone() {
    Get.back();
  }

  /// Navigates to the loginScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the loginScreen.
  onTapIndonesian() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }

  /// Navigates to the signupScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the signupScreen.
  onTapSave() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }
}
