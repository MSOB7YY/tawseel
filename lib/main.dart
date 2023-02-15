import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tawseel/controllers/settings_controller.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/core/themes.dart';
import 'package:tawseel/ui/pages/Screen3.dart';
import 'package:tawseel/ui/pages/order_details.dart';
import 'package:tawseel/ui/pages/profile_page.dart';
import 'package:tawseel/ui/pages/new_order_page.dart';
import 'package:tawseel/ui/pages/onboarding_page.dart';
import 'package:tawseel/ui/pages/reset_password_page.dart';
import 'package:tawseel/ui/widgets/default_scaffold.dart';

import 'ui/pages/change_password.dart';
import 'ui/pages/create_new_password.dart';
import 'ui/pages/login_screen.dart';
import 'ui/pages/new_login_screen.dart';
//import 'ui/pages/order_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      textDirection: TextDirection.rtl,
      title: 'Tawseel',
      theme: AppThemes.inst.getAppTheme(TColors.mainLight, light: true),
      darkTheme: AppThemes.inst.getAppTheme(TColors.mainDark, light: false),
      themeMode: Settings.inst.themeMode.value,
      // home: const OrderDetails(),
      home: const Screen3(),
    );
  }
}
