// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/pages/change_password.dart';
import 'package:tawseel/ui/widgets/default_container.dart';
import 'package:tawseel/ui/widgets/default_scaffold.dart';
import 'package:tawseel/ui/widgets/filled_button.dart';
import 'package:tawseel/ui/widgets/notification_icon.dart';
import 'package:tawseel/ui/widgets/textfield.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TawseelScaffold(
          body: ListView(
            children: [
              SizedBox(
                height: kPadding24 * 3,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kPadding20),
                decoration: BoxDecoration(
                  color: TColors.card.withAlpha(222),
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(kBorderRadius20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      transform: Matrix4.translationValues(0, -60, 0),
                      alignment: Alignment.center,
                      child: TawseelContainer(
                        height: Get.width / 3.4,
                        isCircle: true,
                        // margin: EdgeInsets.all(kPadding24 * 4.4),
                        child: Image.asset("assets/images/brand.jpg"),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "مطعم كريسبي & كرانشي",
                          style: TText.headlineSmall,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: kPadding24,
                    ),
                    Text(
                      "الاسم",
                      style: TText.displayLarge,
                      textAlign: TextAlign.start,
                    ),
                    TawseelTextField(hintText: 'مطعم كريسبي & كرانشي'),
                    SizedBox(
                      height: kPadding12,
                    ),
                    Text(
                      "رقم الهاتف",
                      style: TText.displayLarge,
                      textAlign: TextAlign.start,
                    ),
                    TawseelTextField(hintText: '010222145441'),
                    SizedBox(
                      height: kPadding12,
                    ),
                    Text(
                      "البريد الالكتروني",
                      style: TText.displayLarge,
                      textAlign: TextAlign.start,
                    ),
                    TawseelTextField(hintText: 'support@crispy-cranchy.com'),
                    SizedBox(
                      height: kPadding12,
                    ),
                    Text(
                      "العنوان",
                      style: TText.displayLarge,
                      textAlign: TextAlign.start,
                    ),
                    TawseelTextField(
                      hintText: 'شارع 10 - باب الشعرية - القاهرة',
                      suffixIcon: Icons.location_pin,
                    ),
                    SizedBox(
                      height: kPadding24,
                    ),
                    TawseelFilledButton(
                      color: TColors.success,
                      text: 'حفظ التغييرات',
                    ),
                    SizedBox(
                      height: kPadding24,
                    ),
                    TawseelFilledButton(
                      color: TColors.error,
                      text: 'تغيير كلمة المرور',
                      onTap: () => Get.to(() => ChangePassword()),
                    ),
                    SizedBox(
                      height: kPadding24,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SafeArea(
          child: TawseelContainer(
            margin: EdgeInsets.symmetric(horizontal: kPadding20),
            padding: EdgeInsets.all(kPadding8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.logout_rounded,
                  color: Colors.red,
                ),
                SizedBox(width: kPadding12),
                Text(
                  "تسجيل الخروج",
                  style: TText.displayLarge.copyWith(color: TColors.error),
                ),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(kPadding8),
          child: SafeArea(
            child: TawseelNotificationIcon(),
          ),
        ),
      ],
    );
  }
}
