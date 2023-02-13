import 'package:flutter/material.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/widgets/default_back_button.dart';
import 'package:tawseel/ui/widgets/default_scaffold.dart';
import 'package:tawseel/ui/widgets/filled_button.dart';
import 'package:tawseel/ui/widgets/textfield.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  @override
  Widget build(BuildContext context) {
    return TawseelScaffold(
       title: Align(
        alignment: Alignment.centerRight,
        child: Text("انشاء كلمة مرور جديدة",
            style: TText.titleLarge,
        )
       ),
      leading: const TawseelBackButton(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "قم بانشاء كلمة مرور جديدة بحيث لا تشابه كلمة المرور القديمة",
              style: TText.bodyLarge.copyWith(color: TColors.blackText),
              textDirection: TextDirection.rtl,
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: kPadding80, right: kPadding80),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 0.5)),
                child: Center(
                  child: Image.asset(
                    "assets/images/lock.png",
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.all(kPadding8),
              child: TawseelTextField(
                suffixIcon: Icons.lock_outline,
                prefixIcon: Icons.remove_red_eye,
                hintText: "كلمة المرور",
              )
            ),
            const Padding(
              padding: EdgeInsets.all(kPadding8),
              child: TawseelTextField(
                  suffixIcon: Icons.lock_outline,
                  prefixIcon: Icons.remove_red_eye,
                  hintText: "تأكيد-كلمة المرور",
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(kPadding8),
              child: Align(
                alignment: Alignment.center,
                child: TawseelFilledButton(
                  color: Colors.orange,
                  width: double.infinity,
                  text: "انشاء كلمة المرور",
                  textColor: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "العودة الي ",
                  style: TText.displayMedium,
                  textDirection: TextDirection.rtl,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "تسجيل الدخول",
                    style: TText.displayMedium.copyWith(color: TColors.main),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
