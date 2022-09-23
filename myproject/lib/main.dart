import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random(); // Add this line.
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(                          // Drop the const, and
          //child: Text('Hello World'),        // Replace this text...
          child: ListView.builder(
                itemBuilder: (context, iterator){
                  if(iterator.isOdd) return const Divider(
                    thickness: 2,
                  );
                  final index = iterator ~/ 2;
                  print("Index: ${index}");
                  print("Iterator: ${iterator}");

                  if(index >= _suggestions.length){
                    print("Gerando novas palavras...");
                    _suggestions.addAll(generateWordPairs().take(10));
                  }

                  return ListTile(
                    title: Text(
                      _suggestions[index].asPascalCase,
                      style: _biggerFont,
                    ),
                  );
                }
          ),  // With this text.
        ),
      ),
    );
  }
}