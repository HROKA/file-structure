import 'package:common_ui_toolkit/index.dart';
import 'package:get/get.dart';

/// show alert
showMessage({
  String? description,
  String? type,
  int? textColor,
  bool withBackground = true,
}) {
  Get.snackbar(
    'Alert'.tr,
    description!,
    titleText: CommonText(
      style: CommonTextStyles().h3Style(),
      text: 'Alert'.tr,
    ),
    backgroundColor: withBackground ? Colors.white60 : null,
    barBlur: 2,
  );
}

/// show popup
showPopUp({Widget? child}) {
  Get.dialog(
    child!,
    barrierDismissible: false,
    barrierColor: Colors.transparent,
  );
}
