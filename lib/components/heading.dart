/*
 * Copyright (c) Terl Tech Ltd • 15/07/18 10:49 • goterl.com
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v2.0. If a copy of the MPL was not distributed with this
 * file, you can obtain one at http://mozilla.org/MPL/2.0/.
 */


import 'package:flutter/widgets.dart';

class Heading extends StatelessWidget {

  final String text;
  final EdgeInsetsGeometry padding;

  Heading({this.text, this.padding: EdgeInsets.zero}) {

  }

  Widget build(context) {
    return Container(
      padding: padding,
      child: Text(
        text,
        style: new TextStyle(fontSize: 20.0),
      ),
    );
  }


}