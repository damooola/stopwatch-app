import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stopwatchapp/models/stop_watch_provider.dart';
import 'package:stopwatchapp/pages/stop_watch_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => StopWatchProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StopWatchPage(),
      title: "StopWatch",
    );
  }
}
