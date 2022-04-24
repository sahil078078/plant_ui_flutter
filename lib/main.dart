import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plant_ui_flutter/constants.dart';
import 'package:plant_ui_flutter/screens/home/home_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),

  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: Colors.black.withOpacity(0.5)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}
