import 'package:flutter/material.dart';
import 'package:listview/details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'リストビューサンプル',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('リストビューサンプル'),
      ),
      body: _buildListView(context),
    );
  }

  Widget _buildListView(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (_, index) {
        // ListTileをモデルで追加してみる
        return ListTile(
          title: Text('${index}番'),
          subtitle: Text('サブタイトル'),
          leading: Icon(Icons.thumb_up),
          trailing: IconButton(
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(index)
                )
              );
            },
          ),
        );
      },
    );
  }
}