import 'package:designs/screens/basic_design.dart';
import 'package:designs/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'homescreen',
      theme: ThemeData.dark(),
      routes: {
        'basic_design': (_) => const BasicDesignScreen(),
        'scrollscreen': (_) => ScrollScreen(),
        'homescreen': (_) => HomeScreen(),
      },
    );
  }
}
