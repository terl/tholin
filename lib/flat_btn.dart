

/*
 * Copyright (c) Terl Tech Ltd • 06/06/18 10:45 • goterl.com
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v2.0. If a copy of the MPL was not distributed with this
 * file, you can obtain one at http://mozilla.org/MPL/2.0/.
 */

import 'package:flutter/material.dart';
import 'package:tholin/theme.dart';

class DullFlatButton extends FlatButton {

  DullFlatButton({
    Key key,
    @required onPressed,
    onHighlightChanged,
    textTheme,
    textColor,
    disabledTextColor,
    Color c,
    disabledColor,
    highlightColor,
    splashColor,
    colorBrightness,
    padding,
    shape,
    @required child
  }) : super(
    key: key,
    onPressed: onPressed,
    onHighlightChanged: onHighlightChanged,
    textTheme: textTheme,
    textColor: textColor,
    disabledTextColor: disabledTextColor,
    color: c == null ? MainTheme.primaryLight[200] : null,
    disabledColor: disabledColor,
    highlightColor: highlightColor == null ? MainTheme.primaryLight[300] : null,
    splashColor: splashColor,
    colorBrightness: colorBrightness,
    padding: padding,
    shape: shape,
    child: child
  );

}
