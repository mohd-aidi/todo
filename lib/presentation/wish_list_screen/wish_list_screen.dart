import 'controller/wish_list_controller.dart';
import 'package:flutter/material.dart';
import 'package:todo/core/app_export.dart';
import 'package:todo/core/utils/validation_functions.dart';
import 'package:todo/widgets/custom_elevated_button.dart';
import 'package:todo/widgets/custom_icon_button.dart';
import 'package:todo/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class WishListScreen extends GetWidget<WishListController> {
  WishListScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.h, vertical: 43.v),
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
                          SizedBox(height: 75.v),
                          Text("msg_make_a_wish_list".tr,
                              style: theme.textTheme.headlineMedium),
                          SizedBox(height: 11.v),
                          Text("msg_make_your_job_easier".tr,
                              style: theme.textTheme.labelLarge),
                          SizedBox(height: 85.v),
                          Text("lbl_task_todo".tr,
                              style: CustomTextStyles.labelLargeOnPrimary_1),
                          SizedBox(height: 12.v),
                          CustomTextFormField(
                              controller: controller.taskfieldoneController,
                              hintText: "msg_create_action_mobile".tr,
                              hintStyle: CustomTextStyles.titleSmallOnPrimary,
                              textInputType: TextInputType.phone,
                              prefix: Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 18.h, vertical: 17.v),
                                  child: CustomImageView(
                                      svgPath: ImageConstant
                                          .imgCalendarOnprimarycontainer)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 58.v),
                              validator: (value) {
                                if (!isValidPhone(value)) {
                                  return "Please enter valid phone number";
                                }
                                return null;
                              },
                              contentPadding: EdgeInsets.only(
                                  top: 18.v, right: 30.h, bottom: 18.v),
                              borderDecoration: TextFormFieldStyleHelper
                                  .outlineOnPrimaryTL14),
                          SizedBox(height: 18.v),
                          Text("lbl_date".tr,
                              style: CustomTextStyles.labelLargeOnPrimary_1),
                          SizedBox(height: 12.v),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18.h, vertical: 17.v),
                              decoration: AppDecoration.outlineOnPrimary
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder14),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCalendar,
                                    height: 23.v,
                                    width: 24.h),
                                Padding(
                                    padding: EdgeInsets.only(left: 18.h),
                                    child: Text("lbl_tt_mm_yy".tr,
                                        style: CustomTextStyles
                                            .titleSmallOnPrimary))
                              ])),
                          SizedBox(height: 18.v),
                          Text("lbl_attachments".tr,
                              style: CustomTextStyles.labelLargeOnPrimary_1),
                          SizedBox(height: 12.v),
                          CustomTextFormField(
                              controller: controller.filesizeController,
                              hintText: "lbl_maximum_10_mb".tr,
                              hintStyle: CustomTextStyles.titleSmallOnPrimary,
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 18.h, vertical: 17.v),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgInfo)),
                              prefixConstraints:
                                  BoxConstraints(maxHeight: 58.v),
                              contentPadding: EdgeInsets.only(
                                  top: 18.v, right: 30.h, bottom: 18.v),
                              borderDecoration: TextFormFieldStyleHelper
                                  .outlineOnPrimaryTL14),
                          SizedBox(height: 50.v),
                          CustomElevatedButton(
                              text: "msg_make_a_wish_list".tr,
                              buttonTextStyle:
                                  CustomTextStyles.titleMediumWhiteA700,
                              onTap: () {
                                onTapMakeawish();
                              }),
                          SizedBox(height: 5.v)
                        ])))));
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
