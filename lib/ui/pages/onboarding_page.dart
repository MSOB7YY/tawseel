import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/widgets/default_container.dart';
import 'package:tawseel/ui/widgets/textfield.dart';

import '../widgets/filled_button.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  bool signInButtonClicked = false;
  int _currentPage = 0;
  late Timer _timer;
  PageController _pageController = PageController(
    initialPage: 0,
  );
  @override
  void initState() {
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOutQuart,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
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
          child: Container(
            color: Colors.black.withAlpha(110),
            child: signInButtonClicked
                ? Container(
                    padding: const EdgeInsets.all(kPadding12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TawseelContainer(
                          isCircle: true,
                          padding: const EdgeInsets.all(kPadding20),
                          child: Image.asset(
                            'assets/images/handmoney.png',
                            width: Get.width / 5,
                            height: Get.width / 5,
                          ),
                        ),
                        const SizedBox(
                          height: kPadding12,
                        ),
                        Text(
                          "تسجيل الدخول",
                          style: TText.titleMedium.copyWith(color: TColors.whiteText),
                        ),
                        const SizedBox(
                          height: kPadding20,
                        ),
                        Text(
                          "قم بتسجيل الدخول للمتابعة",
                          style: TText.bodySmall.copyWith(color: TColors.whiteText),
                        ),
                        const SizedBox(
                          height: kPadding20,
                        ),
                        const TawseelTextField(
                          hintText: 'رقم الهاتف',
                        ),
                        const SizedBox(
                          height: kPadding20,
                        ),
                        const TawseelTextField(
                          hintText: 'الرقم السري',
                          suffixIcon: Icons.remove_red_eye,
                        ),
                        const SizedBox(
                          height: kPadding12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'نسيت كلمة السر؟',
                              textAlign: TextAlign.start,
                              style: TText.bodyMedium.copyWith(
                                color: TColors.whiteText,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: kPadding20,
                        ),
                        TawseelFilledButton(
                          width: Get.width - kPadding20 * 2,
                          text: "تسجيل دخول",
                          onTap: () => setState(() {
                            // signInButtonClicked = true;
                          }),
                        ),
                      ],
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: Get.width / 2,
                        child: PageView(controller: _pageController, children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TawseelContainer(
                                  isCircle: true,
                                  padding: const EdgeInsets.all(kPadding20),
                                  child: Image.asset(
                                    'assets/images/handmoney.png',
                                    width: Get.width / 5,
                                    height: Get.width / 5,
                                  ),
                                ),
                                const SizedBox(
                                  height: kPadding12,
                                ),
                                Text(
                                  "تسليم الأرباح",
                                  style: TText.titleMedium.copyWith(color: TColors.whiteText),
                                ),
                                const SizedBox(
                                  height: kPadding20,
                                ),
                                Text(
                                  "هتاخد تكاليف الطلب و انت فى مكانك و سيب الباقى علينا",
                                  style: TText.bodySmall.copyWith(color: TColors.whiteText),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TawseelContainer(
                                  isCircle: true,
                                  padding: const EdgeInsets.all(kPadding20),
                                  child: Image.asset(
                                    'assets/images/boxlocation.png',
                                    width: Get.width / 5,
                                    height: Get.width / 5,
                                  ),
                                ),
                                const SizedBox(
                                  height: kPadding12,
                                ),
                                Text(
                                  "التوصيل و التسليم",
                                  style: TText.titleMedium.copyWith(color: TColors.whiteText),
                                ),
                                const SizedBox(
                                  height: kPadding20,
                                ),
                                Text(
                                  "بعد استلام ارباحك هيقوم أحد السائقين بتوصيل طلبك للعميل",
                                  style: TText.bodySmall.copyWith(color: TColors.whiteText),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TawseelContainer(
                                  isCircle: true,
                                  padding: const EdgeInsets.all(kPadding20),
                                  child: Image.asset(
                                    'assets/images/hand_box.png',
                                    width: Get.width / 5,
                                    height: Get.width / 5,
                                  ),
                                ),
                                const SizedBox(
                                  height: kPadding12,
                                ),
                                Text(
                                  "استلام الطلب",
                                  style: TText.titleMedium.copyWith(color: TColors.whiteText),
                                ),
                                const SizedBox(
                                  height: kPadding20,
                                ),
                                Text(
                                  "هيتم استلام طلبك من خلال أحد السائقين اللى هتختارهم",
                                  style: TText.bodySmall.copyWith(color: TColors.whiteText),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        height: kPadding20,
                      ),
                      TawseelFilledButton(
                        width: Get.width - kPadding20 * 2,
                        text: "تسجيل دخول",
                        onTap: () => setState(() {
                          signInButtonClicked = true;
                        }),
                      ),
                      const SizedBox(
                        height: kPadding20,
                      ),
                      TawseelFilledButton(
                        width: Get.width - kPadding20 * 2,
                        text: "تسجيل جديد",
                        textColor: TColors.blackText,
                        color: TColors.card,
                      )
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
