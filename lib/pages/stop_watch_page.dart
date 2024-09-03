import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:stopwatchapp/models/stop_watch_provider.dart';
import 'package:stopwatchapp/pages/explore_page.dart';

class StopWatchPage extends StatelessWidget {
  const StopWatchPage({super.key});

  bool isPlayButton(IconData icon) {
    if (icon == Icons.play_arrow) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    String elapsedTime = context.watch<StopWatchProvider>().elapsedTime;
    IconData playArrow = context.read<StopWatchProvider>().playArrow;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.all(110),
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
            child: Text(
              elapsedTime,
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: isPlayButton(playArrow)
                    ? IconButton(
                        color: Colors.white,
                        onPressed:
                            context.read<StopWatchProvider>().playStopWatch,
                        icon: const Icon(Icons.play_arrow),
                        iconSize: 40,
                      )
                    : IconButton(
                        color: Colors.white,
                        onPressed:
                            context.read<StopWatchProvider>().pauseStopwatch,
                        icon: const Icon(Icons.pause),
                        iconSize: 40,
                      ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  color: Colors.white,
                  onPressed: context.read<StopWatchProvider>().resetStopwatch,
                  icon: const Icon(Icons.restore),
                  iconSize: 40,
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: GNav(
          tabMargin: const EdgeInsets.only(right: 25),
          color: Colors.grey[400],
          activeColor: Colors.blue,
          iconSize: 30,
          tabActiveBorder: Border.all(color: Colors.blue),
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 16,
          tabs: [
            GButton(
              text: "Home",
              icon: Icons.home,
              onPressed: () {},
            ),
            GButton(
              text: "Explore",
              icon: Icons.explore,
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExplorePage(),
                  )),
            )
          ]),
    );
  }
}
