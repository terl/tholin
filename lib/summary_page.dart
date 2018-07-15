/*
 * Copyright (c) Terl Tech Ltd • 14/07/18 17:29 • goterl.com
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v2.0. If a copy of the MPL was not distributed with this
 * file, you can obtain one at http://mozilla.org/MPL/2.0/.
 */

import 'package:flutter/material.dart';
import 'package:tholin/components/heading.dart';
import 'package:tholin/components/tholin_card.dart';
import 'theme.dart';
import 'package:tholin/flat_btn.dart';
import 'package:tholin/slim_icons.dart';

class SummaryPage extends StatefulWidget {
  SummaryPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _SummaryPageState createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage>
    with TickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    _controller = new TabController(length: 3, vsync: this);
  }

  _buildTopRow() {
    return new Container(
      color: MainTheme.primaryLight[300],
      padding: EdgeInsets.all(50.0),
      child: Column(
        children: <Widget>[Text("Total"), _buildTotal()],
      ),
    );
  }

  _buildTotal() {
    return new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          new Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("1200.545",
                    textScaleFactor: 2.8,
                    style: TextStyle(color: MainTheme.black[300])),
                Container(width: 4.0),
                Text("XLM",
                    style: TextStyle(
                        color: MainTheme.black[100], wordSpacing: 4.0),
                    textScaleFactor: 0.7)
              ]),
        ]);
  }

  _buildCards() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Heading(text: "Cards")
      ],
    );
  }

  _buildPeople() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Heading(text: "People")
      ],
    );
  }



  _buildBody() {
    return new ListView(
        children: [
          Container(
            child: _buildTopRow(),
          ),
          Container(
            padding: EdgeInsets.all(22.0),
            child: Column(
                children: [
                  _buildCards(),
                  Container(height: 8.0),
                  TholinCard("Savings", "1200.222", EdgeInsets.only(left: 0.0, right: 0.0, top: 14.0, bottom: 14.0), 0.0),
                  TholinCard("Savings", "1200.222", EdgeInsets.only(left: 0.0, right: 0.0, top: 14.0, bottom: 14.0), 0.0),
                  Container(height: 14.0),
                  _buildPeople()
                ]
            ),
          )
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainTheme.primaryLight[200],
      body: _buildBody(),
    );
  }
}
