/*
 * Copyright (c) Terl Tech Ltd • 06/06/18 10:45 • goterl.com
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v2.0. If a copy of the MPL was not distributed with this
 * file, you can obtain one at http://mozilla.org/MPL/2.0/.
 */

/**
 * Creating custom color palettes is part of creating a custom app. The idea is to create
 * your class of custom colors, in this case `MainTheme` and then create a `ThemeData`
 * object with those colors you just defined.
 *
 * Resource:
 * A good resource would be this website: http://mcg.mbitson.com/
 * You simply need to put in the colour you wish to use, and it will generate all shades
 * for you. Your primary colour will be the `500` value.
 *
 * Colour Creation:
 * In order to create the custom colours you need to create a `Map<int, Color>` object
 * which will have all the shade values. `const Color(0xFF...)` will be how you create
 * the colours. The six character hex code is what follows. If you wanted the colour
 * #114488 or #D39090 as primary colours in your theme, then you would have
 * `const Color(0x114488)` and `const Color(0xD39090)`, respectively.
 *
 * Usage:
 * In order to use this newly created theme or even the colours in it, you would just
 * `import` this file in your project, anywhere you needed it.
 * `import 'path/to/theme.dart';`
 */

import 'package:flutter/material.dart';

final ThemeData MainThemeData = new ThemeData(
    brightness: Brightness.light,
    primarySwatch: MainTheme.primary.shade50,
    primaryColor: MainTheme.primary,
    primaryColorBrightness: Brightness.light,
    primaryColorDark: MainTheme.primary,
    primaryColorLight: MainTheme.primary[50],
    accentColor: MainTheme.primary[50],
    accentColorBrightness: Brightness.light
);

class MainTheme {
  MainTheme._(); // this basically makes it so you can instantiate this class
  static const MaterialColor primary = const MaterialColor (
    0xFFFFF048,
    const <int, Color>{
      50: const Color.fromARGB(255, 255, 249, 191),
      100: const Color.fromARGB(255, 255, 246, 170),
      200: const Color.fromARGB(255, 255, 243, 147),
      300: const Color.fromARGB(255, 255, 238, 112),
      400: const Color.fromARGB(255, 255, 236, 102),
      500: const Color.fromARGB(255, 255, 240, 72),
      600: const Color.fromARGB(255, 255, 238, 58),
      700: const Color.fromARGB(255, 252, 235, 55),
      800: const Color.fromARGB(255, 247, 230, 46),
      900: const Color.fromARGB(255, 239, 222, 40)
    }
  );

  static const MaterialColor primaryLight = const MaterialColor (
      0xFFFFF048,
      const <int, Color>{
        50: const Color.fromARGB(60, 255, 251, 221),
        100: const Color.fromARGB(100, 255, 249, 211),
        200: const Color.fromARGB(140, 255, 248, 204),
        300: const Color.fromARGB(180, 255, 246, 191),
        400: const Color.fromARGB(255, 255, 244, 183),
        500: const Color.fromARGB(255, 255, 242, 173)
      }
  );


  static const MaterialColor black = const MaterialColor (
      0xFF000000,
      const <int, Color>{
        50: const Color(0xFF424242),
        100: const Color(0xFF3d3d3d),
        200: const Color(0xFF383838),
        300: const Color(0xFF353535),
        400: const Color(0xFF232323),
        500: const Color(0xFF232323),
        600: const Color(0xFF1e1e1e),
        700: const Color(0xFF161616),
        800: const Color(0xFF111111),
        900: const Color(0xFF050505)
      }
  );

}