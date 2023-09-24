import 'package:todo/core/app_export.dart';
import 'package:todo/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:todo/data/models/getLoginAuth/get_get_login_auth_resp.dart';
import 'package:todo/data/apiClient/api_client.dart';

/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  GetGetLoginAuthResp getGetLoginAuthResp = GetGetLoginAuthResp();

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  /// Calls the https://elesen.mbpj.gov.my/api/auth/login?username=superadmin&password=Asuperadmin2018elesen&rw_user=1 API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callGetLoginAuth(
      {Map<String, dynamic> queryParams = const {}}) async {
    try {
      getGetLoginAuthResp = await Get.find<ApiClient>().getLoginAuth(
        headers: {
          'Content-type': 'application/json',
        },
        queryParams: queryParams,
      );
      _handleGetLoginAuthSuccess();
    } on GetGetLoginAuthResp catch (e) {
      getGetLoginAuthResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleGetLoginAuthSuccess() {
    Get.find<PrefUtils>().setRole(getGetLoginAuthResp.user?.roleId ?? '');
    Get.find<PrefUtils>().setName(getGetLoginAuthResp.user?.name ?? '');
    Get.find<PrefUtils>().setEmail(getGetLoginAuthResp.user?.email ?? '');
    Get.find<PrefUtils>().setUsername(getGetLoginAuthResp.user?.username ?? '');
    Get.find<PrefUtils>().setStatus(getGetLoginAuthResp.status ?? '');
    Get.find<PrefUtils>().setMessage(getGetLoginAuthResp.message ?? '');
    Get.find<PrefUtils>().setExpiredtoken(getGetLoginAuthResp.expiresIn ?? '');
    Get.find<PrefUtils>().setToken(getGetLoginAuthResp.token ?? '');
  }
}
