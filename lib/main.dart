import 'package:flutter/material.dart';

//void main() {
//runApp(App()); //runs the build method of App
//}

void main() => runApp(App());

class App extends StatelessWidget {
  var index = 0;

  void answerQuestion() => index = index + 1;

  @override //overrides the build method of statelesswidget
  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite color?',
      'What is your favorite fruit?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TTRP'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[index]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print("answer2"),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => {print("answer3")},
            ),
          ],
        ),
      ), //home is a named argument and materialapp and text are both classes of flutter
    );
  }
}
