import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: new Text("Fetch Data"),
        onPressed: () => null,
      ),
    );
  }
}
