// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.black),
        home: Scaffold(
          body: SafeArea(child: AppHeader()),
        ));
  }
}

class AppHeader extends StatefulWidget {
  @override
  _AppHeaderState createState() => _AppHeaderState();
}

class _AppHeaderState extends State<AppHeader> {
  @override
  final TextEditingController _controller = TextEditingController();
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.search,
            size: 30.0,
          ),
        ),
        Expanded(
            child: TextField(
          controller: _controller,
          decoration:
              InputDecoration(hintText: 'Search product', labelText: 'Search'),
        )),
      ],
    );
  }
}
