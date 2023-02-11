import 'package:flutter/material.dart';

import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/widgets/default_container.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      child: Stack(
        children: [
          const Icon(Icons.notifications),
          Container(
            width: 10.0,
            height: 10.0,
            decoration: BoxDecoration(
              color: TColors.main,
              border: Border.all(color: TColors.card, width: 1.5),
              borderRadius: BorderRadius.circular(kBorderRadius24),
            ),
          ),
        ],
      ),
    );
  }
}
