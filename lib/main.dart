import 'package:flutter/material.dart';
import 'package:new_test/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        key: scaffoldKey,
        drawer: const HaveDrawer(),
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                  child: const Icon(
                    Icons.article_outlined,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
