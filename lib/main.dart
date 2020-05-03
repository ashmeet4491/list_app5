import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quotes_card.dart';
void main() =>
  runApp(MaterialApp(
    home:Test(),
  ));

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  List<Quote>quotes=[
    Quote(text:'Love For All, Hatred For None',author:'abc'),
    Quote(text:'Change the world by being yourself',author:'def'),
    Quote(text:'Every moment is a fresh beginning',author:'mno'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(
        title: Text('Awesome quotes'
        ,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body:Column
        (
      children: quotes.map((quote)
      =>
       QuoteCard(
           quote:quote,
         delete:()
         {
           setState(() {
             quotes.remove(quote);
           });
         },
       )
      ).toList(),

      ),

    );
  }
}

