import 'package:flutter/material.dart';

class StopWatchProvider extends ChangeNotifier {
  Stopwatch stopWatch = Stopwatch();
  String elapsedTime = Duration.zero.toString();
  IconData playArrow = Icons.play_arrow;

  void playStopWatch() {
    stopWatch.start();
    playArrow = Icons.pause;
    getElapsedTimeText();
  }

  void pauseStopwatch() {
    stopWatch.stop();
    playArrow = Icons.play_arrow;
    getElapsedTimeText();
  }

  void resetStopwatch() {
    stopWatch.reset();
    getElapsedTimeText();
  }

  void getElapsedTimeText() {
    Duration duration = stopWatch.elapsed;

    elapsedTime =
        //.padLeft adds the defined string to the left of the string if width is less than defined int
        "${duration.inMinutes.toString().padLeft(2, '0')}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}";
    notifyListeners();
    // return elapsedTime;
  }
}
