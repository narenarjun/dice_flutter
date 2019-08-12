import 'dart:math';
import 'package:flutter/material.dart';

// ! section 8 codes {magic-ball-app}
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.purple,
        ),
        body: FortunePage(),
      ),
    ),
  );
}

class FortunePage extends StatefulWidget {
  @override
  _FortunePageState createState() => _FortunePageState();
}

class _FortunePageState extends State<FortunePage> {
  int ballNumberState = 1;
  void ballState() {
    setState(() {
      ballNumberState = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () {
            ballState();
          },
          child: Image.asset('images/ball$ballNumberState.png'),
        )
      ],
    );
  }
}

// ! section 7 codes {Dicee app}
// class DicePage extends StatefulWidget {
//   @override
//   _DicePageState createState() => _DicePageState();
// }

// class _DicePageState extends State<DicePage> {
//   int leftDicenumber = 1;
//   int rightDicenumber = 1;

//   void randomNumber() {
//     setState(
//       () {
//         rightDicenumber = Random().nextInt(6) + 1;
//         leftDicenumber = Random().nextInt(6) + 1;
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: FlatButton(
//               onPressed: () {
//                 randomNumber();
//               },
//               child: Image.asset('images/dice$leftDicenumber.png'),
//             ),
//           ),
//           Expanded(
//             child: FlatButton(
//               onPressed: () {
//                 randomNumber();
//               },
//               child: Image.asset('images/dice$rightDicenumber.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
