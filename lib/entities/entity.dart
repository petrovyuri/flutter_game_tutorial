import 'package:flutter/cupertino.dart';

abstract class Entity {
  double x = 0;
  double y = 0;
  final String spriteName;
  bool visible = true;
  List sprites = [];

  Entity(this.spriteName) {
    for (var i = 0; i < 4; i++) {
      sprites.add(Image.asset("assets/$spriteName$i.png"));
    }
  }

  void update();

  void move();

  Widget build();
}
