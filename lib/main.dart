import 'package:flutter/material.dart';
import 'package:graphify_website/home.dart';
import 'dart:js' as js;

void main() {
  runApp(const MyApp());
  WidgetsBinding.instance.addPostFrameCallback((_) {
    // This function will be called after the first frame is rendered
    // and after subsequent frames. We only need the first one.
    if (js.context.hasProperty('_flutter_web_app_ready')) {
      js.context.callMethod('_flutter_web_app_ready');
    }
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Graphify Infotech',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
      ),
      home: Homepage(),
    );
  }
}
