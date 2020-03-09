import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String text;

  DetailScreen({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$text',
                  style: TextStyle(fontSize: 50.0),
                )),
            RaisedButton(
                child: Text('Back'),
                textColor: Colors.white,
                color: Colors.lightBlue,
                onPressed: () => Navigator.pop(context))
          ],
        ),
      ),
    );
  }
}
