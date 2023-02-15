import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tawseel/core/constants.dart';

import '../widgets/filled_button.dart';

class SendingAndReceiving extends StatefulWidget {
  const SendingAndReceiving({Key? key}) : super(key: key);

  @override
  State<SendingAndReceiving> createState() => _SendingAndReceivingState();
}

class _SendingAndReceivingState extends State<SendingAndReceiving> {
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
                      "التوصيل و التسليم",
                      style: TText.titleMedium
                          .copyWith(color: TColors.blackText),
                    ),
                  ),
                  const SizedBox(
                    height: kPadding12,
                  ),
                  Center(
                    child: Text(
                      "بعد استلام ارباحك هيقوم أحد السائقين بتوصيل طلبك للعميل",
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
