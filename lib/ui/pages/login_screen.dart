import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/widgets/filled_button.dart';
import 'package:tawseel/ui/widgets/textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  padding: const EdgeInsets.all(kPadding12),
                  child: ListView(
                    children: [
                      Image.asset("assets/images/Tawsel.png"),
                      Center(
                        child: Text(
                          "تسجيل دخول",
                          style: TText.titleMedium
                              .copyWith(color: TColors.blackText),
                        ),
                      ),
                      const SizedBox(
                        height: kPadding12,
                      ),
                      Center(
                        child: Text(
                          "قم بالمتابعة لتسجيل الدخول",
                          style: TText.bodySmall
                              .copyWith(color: TColors.blackText),
                        ),
                      ),
                      const TawseelTextField(
                        obsecureText: false,
                        hintText: "رقم الهاتف",
                      ),
                      const TawseelTextField(
                        obsecureText: true,
                        hintText: "الرقم السرى",
                        suffixIcon: Icons.remove_red_eye,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text("هل نسيت كلمة السر؟"),
                        ),
                      ),
                      const TawseelFilledButton(
                        text: "تسجيل دخول",
                      )
                    ],
                  ),
                ),
              ),
            )));
  }
}
