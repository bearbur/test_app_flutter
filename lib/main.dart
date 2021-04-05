import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final wordPair = 'Random string';
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text('Welcome to Flutter'.toUpperCase())),
          body: Center(
            child: _buildSuggestion(),
          )),
    );
  }
}


class RandomWords extends StatefulWidget {
  @override

    _RandomWordsState createState() => _RandomWordsState();


}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = 'Random string here';
  final _biggerFont = TextStyle(fontSize: 16.0);
  @override
  Widget build(BuildContext context) {
    final wordPair = 'Random';
    return Text(wordPair.toLowerCase());
  }
}

Widget _buildSuggestion(){
  return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        return _buildRow();
      });
}

Widget _buildRow( ) {
  return ListTile(
    title: Text(
      'test1',textDirection: TextDirection.rtl,
    ),
  );
}