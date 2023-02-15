import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tawseel/core/constants.dart';

import '../widgets/filled_button.dart';

class ReceivingOreder extends StatefulWidget {
  const ReceivingOreder({Key? key}) : super(key: key);

  @override
  State<ReceivingOreder> createState() => _ReceivingOrederState();
}

class _ReceivingOrederState extends State<ReceivingOreder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/background.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(kPadding12),
              child: ListView(
                children: [
                  Center(
                    child: Text(
                      "استلام الطلب",
                      style: TText.titleMedium
                          .copyWith(color: TColors.blackText),
                    ),
                  ),
                  const SizedBox(
                    height: kPadding12,
                  ),
                  Center(
                    child: Text(
                      "هيتم استلام طلبك من خلال أحد السائقين اللى هتختارهم",
                      style: TText.bodySmall
                          .copyWith(color: TColors.blackText),
                    ),
                  ),
                  const SizedBox(
                    height: kPadding12,
                  ),
                  const TawseelFilledButton(
                    text: "تسجيل دخول",
                  ),
                  const TawseelFilledButton(
                    text: "تسجيل جديد",
                    textColor: TColors.blackText,
                    color: TColors.card,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
