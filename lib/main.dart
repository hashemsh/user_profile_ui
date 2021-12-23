import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Curriculum Vitae'),
          actions: const [
            Icon(CupertinoIcons.bubble_left),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 16, 0),
              child: Icon(CupertinoIcons.sun_min),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/profile_image.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Brice Seraphin'),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text('Product & Print Designer'),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: const [
                          Icon(CupertinoIcons.location),
                          Text('Paris, France')
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(32, 0, 32, 16),
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut laboreim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea '),
            )
          ],
        ));
  }
}
