import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Settings extends GetxController {
  static Settings inst = Settings();

  Rx<ThemeMode> themeMode = ThemeMode.system.obs;
  RxDouble borderRadiusMultiplier = 1.0.obs;

  Settings() {
    themeMode.value = EnumToString.fromString(ThemeMode.values, getString('themeMode') ?? EnumToString.convertToString(themeMode.value))!;
    borderRadiusMultiplier.value = getDouble('borderRadiusMultiplier') ?? borderRadiusMultiplier.value;
    update();
  }

  /// Saves a value to the key
  void save({
    ThemeMode? themeMode,
    double? borderRadiusMultiplier,
  }) {
    if (themeMode != null) {
      this.themeMode.value = themeMode;
      setData('themeMode', EnumToString.convertToString(themeMode));
    }
    if (borderRadiusMultiplier != null) {
      this.borderRadiusMultiplier.value = borderRadiusMultiplier;
      setData('borderRadiusMultiplier', borderRadiusMultiplier);
    }

    update();
  }

  final GetStorage storage = GetStorage();

  void setData(String key, dynamic value) => storage.write(key, value);
  int? getInt(String key) => storage.read(key);
  String? getString(String key) => storage.read(key);
  List<String> getListString(String key, {List<String> ifNull = const []}) => List<String>.from(storage.read(key) ?? ifNull);
  bool? getBool(String key) => storage.read(key);
  double? getDouble(String key) => storage.read(key);
  dynamic getData(String key) => storage.read(key);
  void clearData() async => storage.erase();

  @override
  void onClose() {
    Get.delete();
    super.onClose();
  }
}
