import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() => runApp(AlphabetSpeakerApp());

class AlphabetSpeakerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alphabet Speaker',
      home: AlphabetScreen(),
    );
  }
}

class AlphabetScreen extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();

  final List<String> letters = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];

  void speakLetter(String letter) async {
    await flutterTts.speak(letter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alphabet Speaker'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 2,
        ),
        itemCount: letters.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () => speakLetter(letters[index]),
              child: Center(
                child: Text(
                  letters[index],
                  style: TextStyle(
                    fontSize: 35, // Font size updated to 35
                    color: Colors.blue, // Font color
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
