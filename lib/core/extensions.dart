import 'package:flutter/animation.dart';
import 'package:tawseel/controllers/settings_controller.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/core/enums.dart';

extension BorderRadiusSetting on double {
  double get multipliedRadius {
    return this * Settings.inst.borderRadiusMultiplier.value;
  }
}

extension OrderStateToText on OrderState {
  String get toText {
    if (this == OrderState.onTheWay) return 'قيد التوصيل';
    if (this == OrderState.delivered) return 'مكتمل';
    if (this == OrderState.canceled) return 'ملغي';
    return '';
  }

  Color get toColor {
    if (this == OrderState.onTheWay) return TColors.mainLight;
    if (this == OrderState.delivered) return TColors.success;
    if (this == OrderState.canceled) return TColors.error;
    return TColors.blackText;
  }
}

extension FormatDateTime on DateTime {
  String get formatDate {
    final now = this;
    String convertedDateTime = "${now.year.toString()}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}${now.hour > 12 ? "ص" : "م"}";
    return convertedDateTime;
  }
}
