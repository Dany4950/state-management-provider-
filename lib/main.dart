import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_1/provider/count_example.dart';

import 'package:state_1/screen/count.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => Count_provider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Count_screen(),
        ));
  }
}
