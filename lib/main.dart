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
                    child: Text('A'),
                    textColor: Colors.white,
                    color: Colors.lightBlue,
                    onPressed: () {
                      _navigateToNext(context, 'A');
                    })),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                    child: Text('B'),
                    textColor: Colors.white,
                    color: Colors.lightBlue,
                    onPressed: () {
                      _navigateToNext(context, 'B');
                    })),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                    child: Text('C'),
                    textColor: Colors.white,
                    color: Colors.lightBlue,
                    onPressed: () {
                      _navigateToNext(context, 'B');
                    }))
          ],
        ),
      ),
    );
  }

  void _navigateToNext(BuildContext context, String text) {
    // 次画面へ遷移して値を渡す
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => DetailScreen(text: text)));
  }
}
