import 'package:tawseel/controllers/settings_controller.dart';

extension BorderRadiusSetting on double {
  double get multipliedRadius {
    return this * Settings.inst.borderRadiusMultiplier.value;
  }
}
