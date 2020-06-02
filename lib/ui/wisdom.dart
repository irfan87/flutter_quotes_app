import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index = 0;
  List quotes = [
    "People often say that motivation doesn't last. Well, neither does bathing -- that's why we recommend it daily.",
    "Someday is not a day of the week.",
    "Hire character. Train skill.",
    "Your time is limited, so don't waste it living someone else's life.",
    "Sales are contingent upon the attitude of the salesman -- not the attitude of the prospect.",
    "Everyone lives by selling something.",
    "If you are not taking care of your customer, your competitor will.",
    "The golden rule for every businessman is this: Put yourself in your customer's place.",
    "If you cannot do great things, do small things in a great way.",
    "I'd rather regret the things I've done than regret the things I haven't done.",
    "Working hard for something we don't care about is called stressed; working hard for something we love is called passion.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                    width: 350,
                    height: 200,
                    margin: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(14.5)),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        quotes[_index % quotes.length],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 16.0),
                      ),
                    ))),
              ),
            ),
            Divider(
              thickness: 1.3,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: FlatButton.icon(
                onPressed: _showQuotes,
                icon: Icon(
                  Icons.wb_sunny,
                  color: Colors.white,
                ),
                label: Text(
                  'Make my day',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.purpleAccent.shade700,
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  void _showQuotes() {
    // increment the index by one
    setState(() {
      _index += 1;
    });
  }
}
