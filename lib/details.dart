import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int index;

  DetailPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('詳細画面'),
      ),
      body: Center(
        child: Text('${index}の詳細画面'),
      ),
    );
  }
}