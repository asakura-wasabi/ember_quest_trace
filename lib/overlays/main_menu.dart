import 'package:flutter/material.dart';

import '../ember_quest.dart';

class MainMenu extends StatelessWidget {
  // Reference to parent game.
  final EmberQuestGame game;

  const MainMenu({required this.game, super.key});

  @override
  Widget build(BuildContext context) {
    const blackTextColor = Color.fromRGBO(0, 0, 0, 1.0);
    const whiteTextColor = Color.fromRGBO(255, 255, 255, 1.0);

    return Material(
      color: Colors.transparent,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          height: 300,
          width: 500,
          decoration: const BoxDecoration(
            color: blackTextColor,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '強風オールバックゲーム',
                style: TextStyle(
                  color: whiteTextColor,
                  fontSize: 46,
                  fontFamily: 'Strong_Wind_All_Back',
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                height: 75,
                child: ElevatedButton(
                  onPressed: () {
                    game.overlays.remove('MainMenu');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: whiteTextColor,
                  ),
                  child: const Text(
                    'Play',
                    style: TextStyle(
                      fontSize: 40.0,
                      color: blackTextColor,
                      fontFamily: 'Strong_Wind_All_Back',
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                '''すすむ　→　W.A.S.D　キー
ジャンプ　→　スペース　キー.
敵をよけながら、星を集めよう！''',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: whiteTextColor,
                    fontSize: 24,
                    fontFamily: 'Strong_Wind_All_Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// cspell:ignore RGBO
// cspell:ignore ARGB
// cspell:ignore WASD