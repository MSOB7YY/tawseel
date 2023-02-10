import 'package:flutter/material.dart';

import 'package:tawseel/core/constants.dart';

class FilledButton extends StatelessWidget {
  final void Function()? onTap;
  final Color color;
  final String text;
  final double? width;
  final Color? textColor;
  const FilledButton({
    super.key,
    this.onTap,
    this.color = TColors.main,
    this.text = '',
    this.width,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(kBorderRadius6),
      child: InkWell(
        borderRadius: BorderRadius.circular(kBorderRadius6),
        onTap: onTap,
        child: Container(
          width: width ?? double.infinity,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(12.0),
          child: Text(
            text,
            style: TText.displayMedium.copyWith(color: textColor ?? TColors.whiteText),
          ),
        ),
      ),
    );
  }
}
