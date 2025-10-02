import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
  
// ส่วนของ Stateful widget
class FirstScreen extends StatefulWidget{
    const FirstScreen({super.key});
 
    @override
    State<StatefulWidget> createState() {
        return _FirstScreen();
    }
}
class _FirstScreen extends State<FirstScreen>{
    final _randomWord = <WordPair>[];
    final _biggerFont = const TextStyle(color: Colors.black,  fontSize: 20.0);
  
    void _addRandomWord(){
        setState(() {
          _randomWord.addAll(generateWordPairs().take(3).toList());
        });
    }
  
    void _clearRandomWord(){
        setState(() {
            _randomWord.clear();
        });
    }
  
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Welcome to Flutter'),
                backgroundColor: Colors.green,
                actions: <Widget>[
                    IconButton(
                        icon: const Icon(Icons.clear_all),
                        tooltip: 'Clear List',
                        onPressed: _clearRandomWord,
                    ),
                ],
            ),
            body: Container(
                child: ListView.builder(
                        itemCount: _randomWord.length,
                        itemBuilder: (context, index) {
                            return _buildRow(_randomWord, index);
                        },
                ),
            ),
            floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.green,
                onPressed: _addRandomWord,
                child: Icon(Icons.add),
            ),
        );
    }
  
    Widget _buildRow(randomWord, index) {
        return Container(
            child: Column(
                children: <Widget>[
                    ListTile(
                      // title: Text('${randomWord[index]}'),
                        title: Text('${randomWord[index].asPascalCase}'),
                        onTap: (){},
                    ),
                    const Divider(),
                ],
            ),
        );
    }
}