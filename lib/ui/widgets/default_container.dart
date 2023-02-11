import 'package:flutter/material.dart';
import 'package:tawseel/core/constants.dart';

class DefaultContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  const DefaultContainer({super.key, required this.child, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(kPadding4),
      decoration: BoxDecoration(
        color: TColors.card,
        borderRadius: BorderRadius.circular(kBorderRadius8),
      ),
      child: child,
    );
  }
}
