import 'package:flutter/material.dart';

class Quote extends StatefulWidget {
  @override
  _QuoteState createState() => _QuoteState();
}

class _QuoteState extends State<Quote> {
  int index = 0;
  List quotes = [
    "Live as if you were to die tomorrow. Learn as if you were to live forever.",
    "That which does not kill us makes us stronger.",
    "Be who you are and say what you feel, because those who mind don’t matter and those who matter don’t mind.",
    "We must not allow other people’s limited perceptions to define us",
    "Do what you can, with what you have, where you are.",
    "Be yourself; everyone else is already taken",
    "This above all: to thine own self be true.",
    "If you cannot do great things, do small things in a great way.",
    "If opportunity doesn’t knock, build a door.",
    "Wise men speak because they have something to say; fools because they have to say something",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Expanded(
              child: Center(
                child: Container(
                    width: 350,
                    height: 200,
                    margin: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Center(
                        child: Text(
                      quotes[index % quotes.length],
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 24),
                    ))),
              ),
            ),
            Divider(
              thickness: 1.3,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: FlatButton.icon(
                  color: Colors.green,
                  onPressed: _getquotes,
                  icon: Icon(Icons.accessible),
                  label: Text("Inspire Me",
                      style: TextStyle(fontSize: 18.8, color: Colors.white))),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  _getquotes() {
    setState(() {
      index = index + 1;
    });
  }
}
