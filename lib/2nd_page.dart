import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Map<String, dynamic> mapData;

  DetailScreen({Key key, @required this.mapData}) : super(key: key);

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
                '${mapData["name"]}',
                style: TextStyle(fontSize: 40.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text('(${mapData["age"]})', style: TextStyle(fontSize: 20.0)),
            ),
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
