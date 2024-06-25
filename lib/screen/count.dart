import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_1/provider/count_example.dart';

class Count_screen extends StatefulWidget {
  const Count_screen({super.key});

  @override
  State<Count_screen> createState() => _Count_screenState();
}

class _Count_screenState extends State<Count_screen> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    final countAccess = Provider.of<Count_provider>(context, listen: false);
    Timer.periodic(Duration(seconds: 0), (Timer) {
      countAccess.CountIncrease();
    });
  }

  @override
  Widget build(BuildContext context) {
    final countAccess = Provider.of<Count_provider>(context, listen: false);
    print("build ");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[200],
        centerTitle: true,
        title: Text("Count"),
      ),
      body: Center(child: Consumer<Count_provider>(
        builder: (context, value, child) {
          print("It is building here ");
          return Text(
            value.count.toString(),
            style: TextStyle(fontSize: 40),
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            countAccess.CountIncrease();
          },
          child: Center(
              child: Text(
            "+",
            style: TextStyle(fontSize: 25),
          ))),
    );
  }
}
