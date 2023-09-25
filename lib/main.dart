import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MainScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF26313A),
        title: const Text(
          'Flutter Tune',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => player.play(AssetSource('note1.wav')),
              child: Container(
                color: const Color(0xFFEE2B3C),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => player.play(AssetSource('note2.wav')),
              child: Container(
                color: Color(0xFFF49431),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => player.play(AssetSource('note3.wav')),
              child: Container(
                color: Color(0xFFFBF25E),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => player.play(AssetSource('note4.wav')),
              child: Container(
                color: Color(0xFF3DC15B),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => player.play(AssetSource('note5.wav')),
              child: Container(
                color: Color(0xFF0DA588),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => player.play(AssetSource('note6.wav')),
              child: Container(
                color: Color(0xFF0EA0E8),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => player.play(AssetSource('note7.wav')),
              child: Container(
                color: Color(0xFF9910A8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
