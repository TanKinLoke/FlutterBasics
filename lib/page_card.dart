import 'package:flutter/material.dart';

class PageCard extends StatelessWidget {

  final String PageName;
  final Widget PageDirect;

  PageCard({this.PageName,this.PageDirect});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 13.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              PageName,
              style: TextStyle(

                fontSize: 20.0,
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                runApp(MaterialApp(
                  home: PageDirect,
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}
