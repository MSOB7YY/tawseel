import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tawseel/core/extensions.dart';

class AppThemes extends GetxController {
  static final AppThemes inst = AppThemes();

  ThemeData getAppTheme(Color color, {bool light = true}) {
    return ThemeData(
      brightness: !light ? Brightness.light : Brightness.dark,
      useMaterial3: true,
      colorSchemeSeed: color,
      fontFamily: "Cairo",
      scaffoldBackgroundColor: light ? Color.alphaBlend(color.withAlpha(60), Colors.white) : null,
      // splashColor: Colors.transparent,
      // splashFactory: InkRipple.splashFactory,
      highlightColor: Colors.white.withAlpha(20),
      disabledColor: const Color.fromARGB(200, 60, 60, 60),
      appBarTheme: AppBarTheme(
        backgroundColor: light
            ? Color.alphaBlend(
                color.withAlpha(80),
                Colors.white,
              )
            : null,
        actionsIconTheme: IconThemeData(
          color: light ? const Color.fromARGB(200, 40, 40, 40) : const Color.fromARGB(200, 233, 233, 233),
        ),
      ),
      iconTheme: IconThemeData(
        color: light ? const Color.fromARGB(200, 40, 40, 40) : const Color.fromARGB(200, 233, 233, 233),
      ),
      shadowColor: light ? const Color.fromARGB(180, 100, 100, 100) : const Color.fromARGB(222, 10, 10, 10),
      dividerTheme: const DividerThemeData(
        thickness: 2,
        indent: 0.0,
        endIndent: 0.0,
      ),
      selectedRowColor: const Color.fromARGB(150, 80, 80, 80),
      dialogTheme: DialogTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0.multipliedRadius))),
      listTileTheme: ListTileThemeData(
        horizontalTitleGap: 4.0,
        selectedColor: light ? const Color.fromARGB(255, 182, 182, 182) : Color.alphaBlend(color.withAlpha(40), const Color.fromARGB(255, 55, 55, 55)),
        iconColor: Color.alphaBlend(
          color.withAlpha(80),
          light ? const Color.fromARGB(200, 55, 55, 55) : const Color.fromARGB(255, 228, 228, 228),
        ),
        textColor: Color.alphaBlend(
          color.withAlpha(80),
          light ? const Color.fromARGB(200, 55, 55, 55) : const Color.fromARGB(255, 228, 228, 228),
        ),
      ),
      // this is for the expansion tile
      dividerColor: Colors.transparent,
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: Get.theme.colorScheme.background,
          borderRadius: BorderRadius.circular(10.0.multipliedRadius),
          boxShadow: [
            BoxShadow(
              color: Get.theme.shadowColor,
              blurRadius: 6.0,
              offset: const Offset(0, 2),
            )
          ],
        ),
        textStyle: TextStyle(
          color: light ? const Color.fromARGB(200, 55, 55, 55) : const Color.fromARGB(255, 228, 228, 228),
        ),
        waitDuration: const Duration(seconds: 1),
      ),
      cardColor: light
          ? Color.alphaBlend(
              color.withAlpha(30),
              const Color.fromARGB(255, 255, 255, 255),
            )
          : Color.alphaBlend(
              color.withAlpha(30),
              const Color.fromARGB(255, 35, 35, 35),
            ),
      cardTheme: CardTheme(
        elevation: 12.0,
        color: light
            ? Color.alphaBlend(
                color.withAlpha(40),
                const Color.fromARGB(255, 255, 255, 255),
              )
            : Color.alphaBlend(
                color.withAlpha(40),
                const Color.fromARGB(255, 35, 35, 35),
              ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
      ),
      popupMenuTheme: PopupMenuThemeData(
        elevation: 12.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0.multipliedRadius),
        ),
      ),
      textTheme: const TextTheme(
        /// Small Fonts
        bodySmall: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontSize: 13.0,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w700,
        ),

        /// Medium Fonts
        displaySmall: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15.0,
        ),
        displayMedium: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
        displayLarge: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 17.0,
        ),

        /// Large Fonts
        titleSmall: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          fontSize: 19.0,
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w800,
        ),

        /// Very Large Fonts
        headlineSmall: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 21.0,
        ),
        headlineMedium: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 22.0,
        ),
        headlineLarge: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 24.0,
        ),
      ),
    );
  }
}
