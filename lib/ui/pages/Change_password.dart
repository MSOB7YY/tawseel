import 'package:flutter/material.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/widgets/default_back_button.dart';
import 'package:tawseel/ui/widgets/default_container.dart';
import 'package:tawseel/ui/widgets/default_scaffold.dart';

import '../widgets/textfield.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return TawseelScaffold(
      title: Text(
        "تغيير الرقم السري",
        style: TText.titleMedium.copyWith(color: TColors.blackText),
      ),
      leading: TawseelBackButton(),
      body: Align(
        alignment: Alignment.topRight,
        child: TawseelContainer(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "الرقم السرى القديم",
                style: TText.titleMedium.copyWith(color: TColors.blackText),
                textDirection: TextDirection.rtl,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TawseelTextField(
                  suffixIcon: Icons.remove_red_eye,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
