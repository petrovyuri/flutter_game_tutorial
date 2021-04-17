import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utilits/global_vars.dart';
import 'entity.dart';

class Bullet extends Entity {
  final double playerAngle;
  double _speed = 6;

  Bullet({this.playerAngle, double playerX, double playerY}) : super("bullet") {
    x = playerX;
    y = playerY;
  }

  @override
  Widget build() {
    return Positioned(
      top: y,
      left: x,
      child: Transform.rotate(
        angle: playerAngle,
        child: sprites.first,
      ),
    );
  }

  @override
  void move() {
    x += sin(playerAngle) * _speed;
    y -= cos(playerAngle) * _speed;
  }

  @override
  void update() {
    if (x > GlobalVars.screenWidth || y > GlobalVars.screenHeight || x < 0 || y < 0) {
      visible = false;
    }
    move();
  }
}
