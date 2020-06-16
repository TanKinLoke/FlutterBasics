import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
import 'page_card.dart';

void main() => runApp(MaterialApp(
    home: MainPage(),
  ));

class MainPage extends StatelessWidget {

  final List<Widget> pages = [Home(),ImageAndButton(),ExpandedWidget(),FlexBoxWidget(),counter(),RandomQuotes()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: pages.map((page) => PageCard(
          PageName: page.toString(),
          PageDirect: page,
        )).toList(),
      ),
    );
  }
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body:
      Center(
        child:
          Text(
            'Hello World!!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Product Sans',
            ),
          ),
      ),

      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        onPressed: null,
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}

class ImageAndButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image and Button'),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Image.asset(
              'assets/Profile.png',
//              width: 50.0,
//              height: 50.0,
            ),
          ),
//            Image.network('https://cdn.discordapp.com/avatars/175612322528755712/259a604bfbf248aa7cea97d4823e5f8f.png'),

          Expanded(
            child: RaisedButton(
              onPressed: () {},
              child: Text('Click me'),
              color: Colors.amber,
            ),
          ),

          Expanded(
            child: RaisedButton.icon(

              onPressed: () {},
              icon: Icon(
                Icons.mail,
              ),
              label: Text('Mail me'),
              color: Colors.yellowAccent,
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Icon(
                Icons.arrow_upward,
                color: Colors.purpleAccent
              ),
              onPressed: () {},
              color: Colors.blueAccent,
              splashColor: Colors.blueAccent,
            ),
          ),

        ],
      ),
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Image.asset('assets/Profile.png')
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Text('1'),
              color: Colors.yellowAccent,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Text('2'),
              color: Colors.blueAccent,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Text('3'),
              color: Colors.purpleAccent,
            ),
          ),
        ],
      );
  }
}

class FlexBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hello',
                style: TextStyle(
                  color: Colors.white,
                ) ,
              ),
              Text(
                ' World',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.person,
                color: Colors.white,
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('one'),
            color: Colors.purpleAccent,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text('two'),
            color: Colors.blueAccent,
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            child: Text('three'),
            color: Colors.yellowAccent,
          ),
        ],
      );
  }
}


class counter extends StatefulWidget {
  @override
  _counterState createState() => _counterState();
}

class _counterState extends State<counter> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter for Stateful Widget'),
      ),
      body: Center(
        child: Text(
          '$counter',
          style: TextStyle(
            fontSize: 50.0,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
      ),
    );
  }
}

class RandomQuotes extends StatefulWidget {
  @override
  _RandomQuotesState createState() => _RandomQuotesState();
}

class _RandomQuotesState extends State<RandomQuotes> {

  List<Quote> quotes = [
    Quote(text:"Be yourself. Everyone else is already taken",author:"Author1"),
    Quote(text:"The truth is rarely pure and never simple",author:"Author2"),
    Quote(text:"I have nothing to declare except my genius",author:"Author3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Quotes'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((e) => QuoteCard(
          quote: e,
          delete: () {
            setState(() {
              quotes.remove(e);
//              e.text = "Deleted";
            });
          },
        )).toList(),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}