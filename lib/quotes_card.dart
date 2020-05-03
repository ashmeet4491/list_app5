import 'package:flutter/material.dart';
import 'quotes.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote,this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 14.0,
              color:Colors.grey,
            ),
          ),
          SizedBox(height: 6.0,),
          Text(
            quote.author,
            style: TextStyle(
              fontSize: 14.0,
              color:Colors.grey[800],
            ),
          ),
          SizedBox(height:6),
          FlatButton.icon(
            onPressed: ()
            {
             delete();
            },
            label: Text('delete data'),
            icon:Icon(Icons.delete),

          ),
        ],
      ),
    );
  }
}

