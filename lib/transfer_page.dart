/*
 * Copyright (c) Terl Tech Ltd • 06/06/18 10:45 • goterl.com
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v2.0. If a copy of the MPL was not distributed with this
 * file, you can obtain one at http://mozilla.org/MPL/2.0/.
 */

import 'package:flutter/material.dart';
import 'theme.dart' as MyTheme;

class TransferPage extends StatefulWidget {
  TransferPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _TransferPageState createState() => _TransferPageState();
}


class _TransferPageState extends State<TransferPage> {

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.only(top: 120.0, left: 44.0, bottom: 32.0, right: 44.0);
    const mainText = Text("1200 lumens", textScaleFactor: 2.6);
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: MyTheme.MainTheme.primary[300],
      body: Container(padding: padding, child: mainText),
    );
  }
}