bool _running = true;

void startLoop() {
  final double _fps = 50;
  final double _second = 10000;
  final double _updateTime = _second/_fps;

  double update = 0;

  Stopwatch _loopWatch = Stopwatch();
  _loopWatch.start();
  Stopwatch _timerWatch = Stopwatch();
  _timerWatch.start();

  while(_running == true) {
    if(_loopWatch.elapsedMilliseconds > _updateTime) {
      update++;
      _loopWatch.reset();
    }

    if(_timerWatch.elapsedMilliseconds > _second) {
      print("${DateTime.now()} FPS $update");
      update = 0;
      _timerWatch.reset();
    }
  }
  }

void  stopLoop() {
  _running = false;
}  
