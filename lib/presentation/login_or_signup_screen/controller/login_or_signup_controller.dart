import 'package:todo/core/app_export.dart';
import 'package:todo/presentation/login_or_signup_screen/models/login_or_signup_model.dart';

/// A controller class for the LoginOrSignupScreen.
///
/// This class manages the state of the LoginOrSignupScreen, including the
/// current loginOrSignupModelObj
class LoginOrSignupController extends GetxController {
  Rx<LoginOrSignupModel> loginOrSignupModelObj = LoginOrSignupModel().obs;
}
