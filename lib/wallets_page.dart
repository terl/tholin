/*
 * Copyright (c) Terl Tech Ltd • 06/06/18 10:45 • goterl.com
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v2.0. If a copy of the MPL was not distributed with this
 * file, you can obtain one at http://mozilla.org/MPL/2.0/.
 */

import 'package:flutter/material.dart';
import 'theme.dart' as MyTheme;
import 'package:tholin/flat_btn.dart';
import 'package:tholin/slim_icons.dart';

class WalletsPage extends StatefulWidget {
  WalletsPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _WalletsPageState createState() => _WalletsPageState();
}

class _WalletsPageState extends State<WalletsPage> {


  _sendPress() {

  }

  _buildTotal() {
    return new Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("1200.545", textScaleFactor: 3.2),
        Container(width: 4.0),
        Text("XLM", style: TextStyle(color: Colors.black54, wordSpacing: 4.0), textScaleFactor: 0.7)
      ],
    );
  }

  _buildWalletName() {
    return new Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Summary", textAlign: TextAlign.center,style: TextStyle(fontSize: 11.0, fontFamily: "Montserrat")),
      ],
    );
  }



  _buildButtonBar() {
    return new ButtonBar(
      mainAxisSize: MainAxisSize.min,
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        DullFlatButton(child: Text("Send"), onPressed: _sendPress),
        DullFlatButton(child: Text("Receive"), onPressed: _sendPress),
        DullFlatButton(child: Text("Request"), onPressed: _sendPress),
      ],
    );
  }

  _listItemTitle(String txt) {
    return new Container(
        padding: EdgeInsets.only(top: 6.0, bottom: 10.0, left: 20.0, right: 20.0),
        child: Row(children: [Text(txt, textScaleFactor: 1.1, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black26))])
    );
  }

  _listItem(String title, String date, String description) {
    return new Container(
        padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 20.0, right: 20.0),
        child: new Card(
            margin: EdgeInsets.zero,
            elevation: 0.3,
            child: new Container(
              padding: EdgeInsets.all(16.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, textAlign: TextAlign.left, textScaleFactor: 1.04, style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(padding: EdgeInsets.only(top: 6.0)),
                  Text(date, textScaleFactor: 0.8, style: TextStyle(color: Colors.black45, fontFamily: "Montserrat")),
                  Container(padding: EdgeInsets.only(top: 6.6)),
                  Text(description, textAlign: TextAlign.left, textScaleFactor: 0.95, style: TextStyle(fontFamily: "Montserrat")),
                ]
              )
            )
        )
    );
  }

  _buildActivityList() {
    return Container(
        margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: new Column(
          children: [
            _listItemTitle("Activity"),
            _listItem("Inflation removed", "19th July 2017", "Inflation was removed from your account."),
            _listItem("Sent 4 XLM to John", "25th May 2017", "Transaction completed successfully."),
            _listItem("Added account", "24th May 2017", "Congratulations, you've added this account!"),
          ],
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.only(top: 34.0, bottom: 20.0);
    var body = new SingleChildScrollView(
      child: Column(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
                color: MyTheme.MainTheme.primary[200],
                border: new Border(bottom: BorderSide(color: Colors.black12, width: 0.5))
            ),
            padding: padding,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [_buildWalletName(), new Flexible(child: _buildTotal()), Container(height: 12.0), _buildButtonBar()]
            ),
          ),
          _buildActivityList()
        ]
      )
    );
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: MyTheme.MainTheme.primaryLight[200],
      body: body,
    );
  }
}
