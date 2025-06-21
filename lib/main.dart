import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:graphify_website/firebase_options.dart';
import 'package:graphify_website/home.dart'; // Assuming 'Homepage' is defined here
import 'dart:js' as js;

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter is initialized first

  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    print('Firebase initialized successfully!');
    // ONLY CALL runApp ONCE, AFTER SUCCESSFUL INITIALIZATION
    runApp(MyApp());
  } on FirebaseException catch (e) {
    print('Firebase initialization error: ${e.code} - ${e.message}');
    // Display an error screen if Firebase fails to initialize
    runApp(
      MaterialApp(
        home: Scaffold(
          body: Center(child: Text('Firebase Error: ${e.message}')),
        ),
      ),
    );
  } catch (e) {
    print('General initialization error: $e');
    // Display a generic error screen for other exceptions
    runApp(MaterialApp(home: Scaffold(body: Center(child: Text('Error: $e')))));
  }

  // The js.context.callMethod part:
  // This should typically be done after your app's main widget tree is built.
  // The addPostFrameCallback is a good place for it.
  WidgetsBinding.instance.addPostFrameCallback((_) {
    if (js.context.hasProperty('_flutter_web_app_ready')) {
      js.context.callMethod('_flutter_web_app_ready');
    }
  });
}

class MyApp extends StatelessWidget {
  // Using static getters is a good pattern for lazy initialization
  static FirebaseAnalytics get analytics => FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver get observer =>
      FirebaseAnalyticsObserver(analytics: analytics);

  // Consider adding a const constructor if MyApp doesn't have mutable state
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // The observer will now be accessed when Firebase is guaranteed to be initialized
      navigatorObservers: [MyApp.observer],
      debugShowCheckedModeBanner: false,
      title: 'Graphify Infotech',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
      ),
      home: Homepage(), // Assuming Homepage is your initial route
    );
  }
}
