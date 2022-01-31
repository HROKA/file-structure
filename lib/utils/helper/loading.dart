import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

/// start loading spinner
startLoading() {
  SmartDialog.showLoading(
    // msg: '',
    // maskColorTemp: Colors.black54,
    // clickBgDismissTemp: true,
    widget: const CircularProgressIndicator(
      strokeWidth: 5,
      valueColor: AlwaysStoppedAnimation(Colors.green),
    ),
    // widget: Image.asset(
    //   BALL_GIF_IMAGE,
    //   width: DEVICE_WIDTH * 0.5,
    //   height: DEVICE_WIDTH * 0.5,
    // ),
  );
}

/// stop loading spinner
dismissLoading() {
  SmartDialog.dismiss();
}
