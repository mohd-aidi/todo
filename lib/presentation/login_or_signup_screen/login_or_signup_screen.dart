import 'controller/login_or_signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/widgets/custom_elevated_button.dart';
import 'package:todo/widgets/custom_icon_button.dart';

class LoginOrSignupScreen extends GetWidget<LoginOrSignupController> {
  const LoginOrSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray5001,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 39.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          margin: EdgeInsets.only(left: 17.h),
                          padding: EdgeInsets.all(6.h),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      SizedBox(height: 41.v),
                      SizedBox(
                          width: 208.h,
                          child: Text("msg_welcome_to_our_community".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.displaySmall!
                                  .copyWith(height: 1.18))),
                      Container(
                          width: 281.h,
                          margin: EdgeInsets.only(top: 2.v, right: 29.h),
                          child: Text("msg_our_community_is".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodySmall!
                                  .copyWith(height: 1.67))),
                      SizedBox(height: 31.v),
                      CustomImageView(
                          svgPath: ImageConstant.imgLogoGray5001,
                          height: 105.v,
                          width: 117.h,
                          alignment: Alignment.center),
                      SizedBox(height: 33.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_get_in_through".tr,
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 33.v),
                      CustomElevatedButton(
                          text: "lbl_sign_up".tr,
                          onTap: () {
                            navigateToSignup();
                          }),
                      SizedBox(height: 14.v),
                      CustomElevatedButton(
                          text: "lbl_login".tr,
                          buttonStyle: CustomButtonStyles.fillDeepOrange,
                          buttonTextStyle:
                              CustomTextStyles.titleSmallSecondaryContainer,
                          onTap: () {
                            navigateToLogin();
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates to the signupScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the signupScreen.
  navigateToSignup() {
    Get.toNamed(
      AppRoutes.signupScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the loginScreen.
  navigateToLogin() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
