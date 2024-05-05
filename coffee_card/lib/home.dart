import 'package:coffee_card/coffee_pref.dart';
import 'package:coffee_card/style_body_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      appBar: AppBar(
       title: const Text('My Coffee id',style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
       ),),
       backgroundColor: Colors.brown[700],
       centerTitle: true,
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[200],
            padding: const EdgeInsets.all(20),
            child: const StyleBodyText('how i like my coffee..'),
          ),
           Container(
            color: Colors.brown[100],
            padding: const EdgeInsets.all(30),
            child: const CoffeePrefs(),
          ),
          Expanded(
            child: Image.asset('assets/img/coffee_bean.jpeg',
             fit: BoxFit.fitWidth,
             alignment: Alignment.bottomCenter,
            )),
          
        ]),
    );
  }
}