import 'package:flutter/material.dart';
import 'package:tawseel/core/constants.dart';

/// only wraps content in an appbar and background with colors
class DefaultScaffold extends StatelessWidget {
  final Widget? body;
  final Widget? leading;
  final Widget? title;
  final List<Widget>? actions;
  const DefaultScaffold({super.key, this.body, this.leading, this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.bg,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: TColors.bg,
        leading: leading,
        title: title,
        actions: actions,
      ),
      body: body,
    );
  }
}
