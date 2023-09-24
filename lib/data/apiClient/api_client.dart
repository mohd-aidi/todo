import 'package:todo/core/app_export.dart';
import 'package:todo/core/utils/progress_dialog_utils.dart';
import 'package:todo/data/models/getLoginAuth/get_get_login_auth_resp.dart';
import 'package:todo/data/models/loginDeviceAuth/post_login_device_auth_resp.dart';
import 'package:todo/data/models/me/get_me_resp.dart';
import 'package:todo/data/models/registerDeviceAuth/post_register_device_auth_resp.dart';

class ApiClient extends GetConnect {
  var elesenUrl = "https://elesen.mbpj.gov.my";

  var url = "https://nodedemo.dhiwise.co";

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = const Duration(seconds: 60);
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  /// is `true` when the response status code is between 200 and 299
  ///
  /// user can modify this method with custom logics based on their API response
  bool _isSuccessCall(Response response) {
    return response.isOk;
  }

  /// Performs API call for https://elesen.mbpj.gov.my/api/auth/login?username=superadmin&password=Asuperadmin2018elesen&rw_user=1
  ///
  /// Sends a GET request to the server's 'https://elesen.mbpj.gov.my/api/auth/login?username=superadmin&password=Asuperadmin2018elesen&rw_user=1' endpoint
  /// with the provided headers and request data
  /// Returns a [GetGetLoginAuthResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<GetGetLoginAuthResp> getLoginAuth({
    Map<String, String> headers = const {},
    Map<String, dynamic> queryParams = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get(
        '$elesenUrl/api/auth/login',
        headers: headers,
        query: queryParams,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return GetGetLoginAuthResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? GetGetLoginAuthResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for https://nodedemo.dhiwise.co/device/api/v1/user/me
  ///
  /// Sends a GET request to the server's 'https://nodedemo.dhiwise.co/device/api/v1/user/me' endpoint
  /// with the provided headers and request data
  /// Returns a [GetMeResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<GetMeResp> fetchMe({Map<String, String> headers = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get(
        '$url/device/api/v1/user/me',
        headers: headers,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return GetMeResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? GetMeResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for https://nodedemo.dhiwise.co/device/auth/login
  ///
  /// Sends a POST request to the server's 'https://nodedemo.dhiwise.co/device/auth/login' endpoint
  /// with the provided headers and request data
  /// Returns a [PostLoginDeviceAuthResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostLoginDeviceAuthResp> loginDeviceAuth({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/device/auth/login',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostLoginDeviceAuthResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostLoginDeviceAuthResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for https://nodedemo.dhiwise.co/device/auth/register
  ///
  /// Sends a POST request to the server's 'https://nodedemo.dhiwise.co/device/auth/register' endpoint
  /// with the provided headers and request data
  /// Returns a [PostRegisterDeviceAuthResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostRegisterDeviceAuthResp> registerDeviceAuth({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/device/auth/register',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostRegisterDeviceAuthResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostRegisterDeviceAuthResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }
}
