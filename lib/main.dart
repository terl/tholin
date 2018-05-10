/*
 * Copyright (c) Terl Tech Ltd • 06/06/18 10:45 • goterl.com
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v2.0. If a copy of the MPL was not distributed with this
 * file, you can obtain one at http://mozilla.org/MPL/2.0/.
 */

import 'package:flutter/material.dart';
import 'package:tholin/slim_icons.dart';
import 'theme.dart';
import 'cards_page.dart';
import 'transfer_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Ginora Sans",
          primaryColor: MainTheme.primary[700],
          backgroundColor: MainTheme.primary[600],
          canvasColor: MainTheme.primaryLight[700],
          textTheme: Theme
              .of(context)
              .textTheme
              .copyWith(caption: new TextStyle(color: Colors.black38))),
      home: MainPage(title: 'Flutter A Home Page'),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MainPageState createState() => new _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _screen = 0;
  String _account = "one";
  PageController _controller = new PageController();

  void _changeScreen(index) {
    setState(() {
      _screen = index;
    });

    _controller.animateToPage(index,
        duration: new Duration(milliseconds: 120), curve: Curves.linear);
  }

  void _onCenterAppBarBtnPress() {}

  _buildNavItem(String text, IconData icon) {
    return BottomNavigationBarItem(
      icon: new Icon(icon, size: 20.0),
      title: new Text(text,
          style: TextStyle(height: 1.3, fontWeight: FontWeight.bold)),
    );
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: MainTheme.primary[200],
      elevation: 0.4,
      centerTitle: true,
      leading: IconButton(
          padding:
              EdgeInsets.only(left: 8.0, top: 12.0, right: 8.0, bottom: 8.0),
          icon:
              Icon(MarketingIcons.lineGraph, color: Colors.black, size: 20.0)),
      actions: [
        IconButton(
            icon:
                Icon(UIIcons.toggleSwitches, color: Colors.black, size: 20.0)),
      ],
      title: new Theme(
        isMaterialAppTheme: true,
        data: new ThemeData.light(),
        child: new FlatButton(
            onPressed: _onCenterAppBarBtnPress,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("Personal", style: TextStyle(fontFamily: "Ginora Sans", fontWeight: FontWeight.bold)),
                Container(width: 2.0),
                Icon(Icons.compare_arrows, size: 14.0),
              ],
            ),
        )
      ),
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
        bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(
              primaryColor: Colors.black,
              canvasColor: MainTheme.primary[200],
              textTheme: Theme
                  .of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.black38))),
          child: new BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _screen,
            onTap: (v) => this._changeScreen(v),
            items: [
              _buildNavItem("Cards", EcommerceIcons.cards),
              _buildNavItem("Transfer", ArrowIcons.transfer),
              _buildNavItem("Settings", UIIcons.settings3),
            ],
          ),
        ),
        appBar: _buildAppBar(),
        body: PageView(controller: _controller, children: [
          CardsPage(),
          TransferPage(),
          TransferPage(),
        ]) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
