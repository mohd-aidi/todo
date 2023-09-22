import 'package:todo/core/app_export.dart';
import 'package:todo/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:todo/data/models/loginDeviceAuth/post_login_device_auth_resp.dart';
import 'package:todo/data/apiClient/api_client.dart';

/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  PostLoginDeviceAuthResp postLoginDeviceAuthResp = PostLoginDeviceAuthResp();

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  /// Calls the https://nodedemo.dhiwise.co/device/auth/login API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callLoginDeviceAuth(Map req) async {
    try {
      postLoginDeviceAuthResp = await Get.find<ApiClient>().loginDeviceAuth(
        headers: {
          'Content-type': 'application/json',
        },
        requestData: req,
      );
      _handleLoginDeviceAuthSuccess();
    } on PostLoginDeviceAuthResp catch (e) {
      postLoginDeviceAuthResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleLoginDeviceAuthSuccess() {
    Get.find<PrefUtils>().setStatus(postLoginDeviceAuthResp.status ?? '');
  }
}
