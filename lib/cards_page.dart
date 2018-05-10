/*
 * Copyright (c) Terl Tech Ltd • 06/06/18 10:45 • goterl.com
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v2.0. If a copy of the MPL was not distributed with this
 * file, you can obtain one at http://mozilla.org/MPL/2.0/.
 */

import 'package:flutter/material.dart';
import 'theme.dart';
import 'package:tholin/flat_btn.dart';
import 'package:tholin/slim_icons.dart';

class CardsPage extends StatefulWidget {
  CardsPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  _sendPress() {}

  _buildTotal() {
    return new Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("1200.545", textScaleFactor: 3.2, style: TextStyle(color: MainTheme.primary[300])),
        Container(width: 4.0),
        Text("XLM",
            style: TextStyle(color: MainTheme.primaryLight[100], wordSpacing: 4.0),
            textScaleFactor: 0.7)
      ],
    );
  }

  _buildCardName() {
    return new Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Savings",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: MainTheme.primary[200],
                fontSize: 14.0,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold)),
      ],
    );
  }

  _buildIconButton(IconData ico) {
    return FloatingActionButton(
        mini: true,
        elevation: 12.0,
        backgroundColor: MainTheme.primaryLight[400],
        child: Icon(ico, color: MainTheme.black[50]),
        onPressed: _sendPress);
  }

  _buildLeftRightBtns() {
    return new Container(
        width: 460.0,
        child: new ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                _buildIconButton(Icons.arrow_left),
                _buildIconButton(Icons.arrow_right),
              ],
        )
    );
  }

  _buildButtonForBar(String text) {
    return
      Expanded(
          child: DullFlatButton(
            c: MainTheme.primary[300],
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0.0))),
            child: Text(text, style: TextStyle(fontSize: 12.0, color: Colors.black87)),
            onPressed: _sendPress
          )
      );
  }

  _buildButtonBar() {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        _buildButtonForBar("Send"),
        _buildButtonForBar("Receive"),
        _buildButtonForBar("Request"),
      ],
    );
  }

  _buildCard() {
    const padding = EdgeInsets.only(top: 34.0, left: 26.0, right: 26.0, bottom: 28.0);
    return new Stack(
        alignment: AlignmentDirectional.center,
        children: [
          new Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3.0))),
            elevation: 20.0,
            color: MainTheme.black[200],
            margin: padding,
            child: Container(
              width: 320.0,
              height: 180.0,
              padding: EdgeInsets.only(top: 24.0, left: 0.0, right: 0.0, bottom: 0.0),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                _buildCardName(),
                new Flexible(child: _buildTotal()),
                Container(height: 12.0),
                _buildButtonBar(),
              ]),
            )
          ),
          _buildLeftRightBtns(),
        ]
    );
  }

  _buildCardSwiper() {
    return new Container(
        color: MainTheme.primaryLight[50],
        width: double.infinity,
        child: new Container(
            width: 100.0,
            alignment: Alignment.center,
            child: _buildCard()
        )
    );
  }


  _listItemTitle(String txt) {
    return new Container(
        padding:
            EdgeInsets.only(top: 6.0, bottom: 10.0, left: 20.0, right: 20.0),
        child: Row(children: [
          Text(txt,
              textScaleFactor: 1.1,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black26))
        ]));
  }

  _listItem(String title, String date, String description) {
    return new Container(
        padding:
            EdgeInsets.only(top: 8.0, bottom: 8.0, left: 20.0, right: 20.0),
        child: new Card(
            margin: EdgeInsets.zero,
            elevation: 0.3,
            child: new Container(
                padding: EdgeInsets.all(16.0),
                child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title,
                          textAlign: TextAlign.left,
                          textScaleFactor: 1.04,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Container(padding: EdgeInsets.only(top: 6.0)),
                      Text(date,
                          textScaleFactor: 0.8,
                          style: TextStyle(
                              color: Colors.black45, fontFamily: "Montserrat")),
                      Container(padding: EdgeInsets.only(top: 6.6)),
                      Text(description,
                          textAlign: TextAlign.left,
                          textScaleFactor: 0.95,
                          style: TextStyle(fontFamily: "Montserrat")),
                    ]))));
  }

  _buildActivityList() {
    return Container(
        margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: new Column(
          children: [
            _listItemTitle("Activity"),
            _listItem("Inflation removed", "19th July 2017",
                "Inflation was removed from your account."),
            _listItem("Sent 4 XLM to John", "25th May 2017",
                "Transaction completed successfully."),
            _listItem("Added account", "24th May 2017",
                "Congratulations, you've added this account!"),
          ],
        ));
  }

  _buildBody() {
    return new SingleChildScrollView(
        child: Column(
            children: <Widget>[
              _buildCardSwiper(),
              _buildActivityList()
            ])
    );
  }

  @override
  Widget build(BuildContext context) {

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: MainTheme.primaryLight[200],
      body: _buildBody(),
    );
  }
}
