import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/bottomsheets/added_product.dart';
import 'package:tawseel/ui/bottomsheets/verification_code.dart';
import 'package:tawseel/ui/widgets/default_back_button.dart';
import 'package:tawseel/ui/widgets/default_container.dart';
import 'package:tawseel/ui/widgets/default_scaffold.dart';
import 'package:tawseel/ui/widgets/filled_button.dart';
import 'package:tawseel/ui/widgets/notification_icon.dart';
import 'package:tawseel/ui/widgets/textfield.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return TawseelScaffold(
      toolbarHeight: Get.height / 10,
      leading: TawseelContainer(isCircle: true, child: Image.asset('assets/images/logo.png')),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("كريسبي & كرانشي"),
          const SizedBox(height: kPadding4 / 2),
          Row(
            children: [
              const Icon(
                Icons.location_pin,
                color: TColors.blackText,
                size: 16.0,
              ),
              Text(
                'شارع 10 - باب الشعرية - القاهرة',
                style: TText.bodyMedium,
              ),
            ],
          )
        ],
      ),
      actions: [TawseelNotificationIcon()],
      body: ListView(
        children: [
          const SizedBox(height: kPadding16),
          TawseelContainer(
            margin: const EdgeInsets.all(kMargin16),
            padding: const EdgeInsets.all(kPadding12),
            enableShadow: true,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'استلم فلوسك\nوالتوصيل علينا',
                        style: TText.displayLarge.copyWith(height: 1.6),
                      ),
                      const SizedBox(height: kPadding16),
                      TawseelFilledButton(
                        text: 'اطلب دلوقتي',
                        onTap: () => null,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: kPadding12),
                Image.asset(
                  'assets/images/homepage_man.png',
                  width: Get.width / 2,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: TColors.card.withAlpha(222),
              borderRadius: const BorderRadius.vertical(top: Radius.circular(kBorderRadius20)),
            ),
            padding: EdgeInsets.only(bottom: Get.height / 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: kPadding16),
                Padding(
                  padding: const EdgeInsets.only(right: kPadding20),
                  child: Text(
                    'الطلبات الحالية',
                    style: TText.displayLarge.copyWith(color: TColors.blackText),
                  ),
                ),
                TawseelContainer(
                  margin: const EdgeInsets.all(kMargin16),
                  padding: const EdgeInsets.all(kPadding20),
                  enableShadow: true,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'رقم الطلب #25414',
                            style: TText.displayLarge.copyWith(color: TColors.blackText),
                          ),
                          Text(
                            'قيد التوصيل',
                            style: TText.displayLarge.copyWith(color: TColors.mainLight),
                          ),
                        ],
                      ),
                      const SizedBox(height: kPadding12),
                      const Divider(),
                      const SizedBox(height: kPadding12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.location_pin, color: TColors.main),
                          const SizedBox(width: kPadding8),
                          Text(
                            'شارع 44 - السبتية - القاهرة',
                            style: TText.displaySmall,
                          ),
                        ],
                      ),
                      const SizedBox(height: kPadding12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.timer),
                          const SizedBox(width: kPadding8),
                          Text(
                            '20/10/2021, 11:00ص',
                            style: TText.displaySmall,
                          ),
                        ],
                      ),
                      const SizedBox(height: kPadding24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'التكلفة:',
                            style: TText.displayMedium,
                          ),
                          const SizedBox(width: kPadding8),
                          Text(
                            '30 ج.م',
                            style: TText.displayLarge,
                          ),
                        ],
                      ),
                      const SizedBox(height: kPadding24),
                      TawseelFilledButton(
                        onTap: () => null,
                        color: TColors.bg,
                        text: 'عرض التفاصيل',
                        textColor: TColors.blackText,
                        margin: const EdgeInsets.symmetric(horizontal: kMargin12, vertical: kMargin20),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
