import 'controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/widgets/custom_icon_button.dart';
import 'package:todo/widgets/custom_outlined_button.dart';

class SettingsScreen extends GetWidget<SettingsController> {
  const SettingsScreen({Key? key}) : super(key: key);

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
                          padding: EdgeInsets.all(6.h),
                          onTap: () {
                            onTapBtnArrowleftone();
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      SizedBox(height: 90.v),
                      Text("lbl_settings".tr,
                          style: theme.textTheme.headlineMedium),
                      SizedBox(height: 9.v),
                      Text("msg_your_settings_so".tr,
                          style: theme.textTheme.labelLarge),
                      SizedBox(height: 33.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 28.h, vertical: 20.v),
                          decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder14),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 1.v),
                                    child: Text("lbl_personality".tr,
                                        style: CustomTextStyles
                                            .labelLargeOnPrimary)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowright,
                                    height: 6.v,
                                    width: 3.h,
                                    margin: EdgeInsets.only(
                                        left: 91.h, top: 6.v, bottom: 6.v))
                              ])),
                      SizedBox(height: 14.v),
                      Container(
                          decoration: AppDecoration.outlineBlack900,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 28.h, vertical: 19.v),
                              decoration: AppDecoration.outlineBlack.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder14),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 2.v),
                                        child: Text("lbl_language".tr,
                                            style: CustomTextStyles
                                                .labelLargeOnPrimary)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: 6.v,
                                        width: 3.h,
                                        margin: EdgeInsets.only(
                                            left: 93.h, top: 7.v, bottom: 7.v))
                                  ]))),
                      SizedBox(height: 14.v),
                      Container(
                          decoration: AppDecoration.outlineBlack900,
                          child: GestureDetector(
                              onTap: () {
                                onTapRowtermandcondi();
                              },
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 28.h, vertical: 20.v),
                                  decoration: AppDecoration.outlineBlack
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder14),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 1.v),
                                            child: Text(
                                                "msg_terms_and_conditions".tr,
                                                style: CustomTextStyles
                                                    .labelLargeOnPrimary)),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright,
                                            height: 6.v,
                                            width: 3.h,
                                            margin: EdgeInsets.only(
                                                left: 58.h,
                                                top: 6.v,
                                                bottom: 6.v))
                                      ])))),
                      Spacer(),
                      SizedBox(height: 63.v),
                      CustomOutlinedButton(text: "lbl_log_out".tr)
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapBtnArrowleftone() {
    Get.back();
  }

  /// Navigates to the termsandconditionsScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the termsandconditionsScreen.
  onTapRowtermandcondi() {
    Get.toNamed(
      AppRoutes.termsandconditionsScreen,
    );
  }
}
