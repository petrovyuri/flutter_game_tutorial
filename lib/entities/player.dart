import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_game_tutorial/entities/entity.dart';
import 'package:flutter_game_tutorial/utilits/global_vars.dart';

class Player extends Entity {
  Player() : super("player") {
    x = 50;
    y = 150;
  }

  double _angle = 0;
  double _degree = 0;
  bool isMoveLeft = false;
  bool isMoveRight = false;
  double _speed = 3;
  bool isAcceleration = false;

  get getAngle => _angle;

  @override
  Widget build() {
    return Positioned(
        top: y,
        left: x,
        child: visible
            ? Transform.rotate(
                angle: _angle,
                child: sprites[currentSprite],
              )
            : SizedBox());
  }

  @override
  void move() {
    if (!isAcceleration) return;
    if (isMoveLeft) _degree -= 5;
    if (isMoveRight) _degree += 5;

    _angle = (_degree * 3.14) / 180;

    x += sin(_degree * 0.0175) * _speed;
    y -= cos(_degree * 0.0175) * _speed;

    if (x < 0) {
      x = 0;
    }
    if (y < 0) {
      y = 0;
    }

    if (x > GlobalVars.screenWidth - 50) {
      x = GlobalVars.screenWidth - 50;
    }

    if (y > GlobalVars.screenHeight - 50) {
      y = GlobalVars.screenHeight - 50;
    }

    isMoveLeft = false;
    isMoveRight = false;
  }
}
