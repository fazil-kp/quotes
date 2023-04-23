import 'package:flutter/material.dart';
import 'quote.dart';
import 'QuoteCard.dart';
void main (){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home:mfzList(),

  ));
}

class mfzList extends StatefulWidget {
  const mfzList({Key? key}) : super(key: key);

  @override
  State<mfzList> createState() => _mfzListState();
}

class _mfzListState extends State<mfzList> {

  List<Quote> quotes =[

    Quote(text: 'The best way to predict your future is to create it',author: 'Abraham Lincoln'),
    Quote(text: "Believe you can and you're halfway there" ,author: 'Theodore Roosevelt'),
    Quote(text: 'Life is 10% what happens to us and 90% how we react to it',author: ' Charles R. Swindoll'),
    Quote(text: "You miss 100% of the shots you don't take",author: 'Wayne Gretzky'),
    Quote(text: 'The only way to do great work is to love what you do',author: 'Steve Jobs'),


  //
  // "The best way to predict your future is to create it. - Abraham Lincoln",
  // "Believe you can and you're halfway there. - Theodore Roosevelt",
  // "Life is 10% what happens to us and 90% how we react to it. - Charles R. Swindoll",
  // "Success is not final, failure is not fatal: it is the courage to continue that counts. - Winston Churchill",
  // "You miss 100% of the shots you don't take. - Wayne Gretzky",
  // "The only way to do great work is to love what you do. - Steve Jobs",
  // "Happiness is not something ready made. It comes from your own actions. - Dalai Lama",
  // "If you want to go fast, go alone. If you want to go far, go together. - African proverb",
  // "In the end, we will remember not the words of our enemies, but the silence of our friends. - Martin Luther King Jr.",
  // "The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart. - Helen Keller",

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[250],
      appBar: AppBar(
        title: Text('Wonderful Quotes'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) => QuoteCard(
            quote:quote,
            delete:(){
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList()
      ),
    );
  }
}

