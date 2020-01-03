import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flip Card Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flip Card Demo'),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: FlipCard(
                    speed: 500,
                    direction: FlipDirection.HORIZONTAL,
                    flipOnTouch: true,
                    onFlip: () {
                      print('onFlip');
                    },
                    onFlipDone: (isFront) {
                      print('onFlipDone:$isFront');
                    },
                    front: Card(
                      color: Colors.cyan,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                      ),
                      margin: EdgeInsets.all(12.0),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'front',
                              style: TextStyle(fontSize: 25.0),
                            ),
                            Text(
                              '縦回転',
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    back: Card(
                      color: Colors.blueGrey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                      ),
                      margin: EdgeInsets.all(12.0),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'back',
                              style: TextStyle(fontSize: 25.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
