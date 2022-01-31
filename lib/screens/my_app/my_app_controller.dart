import 'package:get/get_state_manager/get_state_manager.dart';

import '../../constants/index.dart';
import '../../utils/index.dart';

class MyAppController extends GetxController {
  dynamic userData;
  LocalStorage localStorage = LocalStorage();

  @override
  void onInit() async {
    super.onInit();
    userData = await localStorage.getFromStorage(key: cUserData);
    consoleLog(userData);
  }

  void onUserAuthenticated(userDataValue) {
    localStorage.saveToStorage(key: cUserData, value: userDataValue);
    userData = userDataValue;
    consoleLog(userDataValue);
    update();
  }

  void onUserUpdated(userDataValue) {
    localStorage.saveToStorage(key: cUserData, value: userDataValue);
    userData = userDataValue;
    consoleLog(userDataValue);
    update();
  }

  void onSignOut() {
    localStorage.erase();
    userData = null;
  }
}
