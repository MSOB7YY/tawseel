import 'package:flutter/material.dart';

import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/widgets/default_container.dart';

class TawseelNotificationIcon extends StatelessWidget {
  const TawseelNotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return TawseelContainer(
      child: Stack(
        children: [
          const Icon(Icons.notifications),
          Material(
            child: InkWell(
              onTap: () => null,
              child: Container(
                width: 10.0,
                height: 10.0,
                decoration: BoxDecoration(
                  color: TColors.main,
                  border: Border.all(color: TColors.card, width: 1.5),
                  borderRadius: BorderRadius.circular(kBorderRadius24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
