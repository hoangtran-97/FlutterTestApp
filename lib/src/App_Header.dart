import 'package:flutter/material.dart';

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
