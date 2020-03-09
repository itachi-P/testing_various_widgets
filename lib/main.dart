import 'package:flutter/material.dart';

import '2nd_page.dart';

void main() {
  runApp(MaterialApp(home: FirstScreen()));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                    child: Text('Aさん(16)'),
                    textColor: Colors.white,
                    color: Colors.lightBlue,
                    onPressed: () {
                      _navigateToNext(context, _mapDataSet('Aさん', 16));
                    })),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                    child: Text('B氏(28)'),
                    textColor: Colors.white,
                    color: Colors.lightBlue,
                    onPressed: () {
                      _navigateToNext(context, _mapDataSet('B氏', 28));
                    })),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                    child: Text('有閑マダムC(58)'),
                    textColor: Colors.white,
                    color: Colors.lightBlue,
                    onPressed: () {
                      _navigateToNext(context, _mapDataSet('勇敢マダムC#', 38));
                    }))
          ],
        ),
      ),
    );
  }

  void _navigateToNext(BuildContext context, Map<String, dynamic> data) {
    // 次画面へ遷移して値を渡す
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => DetailScreen(mapData: data)));
  }

  Map _mapDataSet(String name, num age) {
    final Map<String, dynamic> userData = {'name': name, 'age': age};
    return userData;
  }
}
