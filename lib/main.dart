import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote-card.dart';
void main() {
  runApp(MaterialApp(
    home: QuoteList(),
    debugShowCheckedModeBanner: false,
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  //List of Strings
  List<Quote> quotes = [
    Quote(author: 'Dwayne Johnson', text:'Be the hardest worker in the room'),
    Quote(author: 'unknown', text:'Think then immediately work'),
    Quote(author: 'njagi', text: 'The easiest way to success is the hard one')
    
    
  ];
  

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //map through list of data 
        //and get an instance of each item in the list
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),

      )
      

      
    );
  }
}



