import 'package:flutter/material.dart';

import '../ember_quest.dart';

class GameOver extends StatelessWidget {
  // Reference to parent game.
  final EmberQuestGame game;
  const GameOver({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    const blackTextColor = Color.fromRGBO(0, 0, 0, 1.0);
    const whiteTextColor = Color.fromRGBO(255, 255, 255, 1.0);

    return Material(
      color: Colors.transparent,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          height: 200,
          width: 300,
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
                'ゲームオーバー',
                style: TextStyle(
                    color: whiteTextColor,
                    fontSize: 24,
                    fontFamily: 'Strong_Wind_All_Back'),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: 200,
                height: 75,
                child: ElevatedButton(
                  onPressed: () {
                    game.reset();
                    game.overlays.remove('GameOver');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: whiteTextColor,
                  ),
                  child: const Text(
                    'もう一回',
                    style: TextStyle(
                        fontSize: 28.0,
                        color: blackTextColor,
                        fontFamily: 'Strong_Wind_All_Back'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// cspell:ignore RGBO