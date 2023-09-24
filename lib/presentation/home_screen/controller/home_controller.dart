import 'package:todo/core/app_export.dart';
import 'package:todo/presentation/home_screen/models/home_model.dart';

/// A controller class for the HomeScreen.
///
/// This class manages the state of the HomeScreen, including the
/// current homeModelObj
class HomeController extends GetxController {
  var email = Get.arguments[NavigationArgs.email];

  var token = Get.arguments[NavigationArgs.token];

  var name = Get.arguments[NavigationArgs.name];

  Rx<HomeModel> homeModelObj = HomeModel().obs;
}
