import 'package:flutter/material.dart';
import './screens/tabs.dart';
import 'package:flutter/services.dart';

Color myCustomColor = const Color(0xFF536CF0);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: myCustomColor),
      home: const TabsScreen(),
    );
  }
}
