/*
 * Copyright (c) Terl Tech Ltd • 15/07/18 11:18 • goterl.com
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v2.0. If a copy of the MPL was not distributed with this
 * file, you can obtain one at http://mozilla.org/MPL/2.0/.
 */



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tholin/flat_btn.dart';
import 'package:tholin/theme.dart';

class TholinCard extends StatelessWidget {

  final String name;
  final String total;
  final EdgeInsetsGeometry margin;
  final double elevation;

  TholinCard(this.name, this.total, this.margin, this.elevation);

  _sendPress() {}

  _buildCardName() {
    return new Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(name,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: MainTheme.primary[200],
                fontSize: 14.0,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold)),
      ],
    );
  }

  _buildTotal() {
    return new Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(total, textScaleFactor: 3.2, style: TextStyle(color: MainTheme.primary[300])),
        Container(width: 4.0),
        Text("XLM",
            style: TextStyle(color: MainTheme.primaryLight[100], wordSpacing: 4.0),
            textScaleFactor: 0.7)
      ],
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

  Widget build(context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3.0))),
        elevation: elevation,
        color: MainTheme.black[200],
        margin: margin,
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
    );
  }


}