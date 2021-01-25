import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_game_tutorial/entities/player.dart';
import 'package:flutter_game_tutorial/scenes/app_scene.dart';

class GameScene extends AppScene {

  Player _player = Player();

  @override
  Widget buildScene() {
    return Stack(
      children: [
        _player.build()
      ],
    );
  }

  @override
  void update() {
    _player.update();
  }

  GameScene();
}