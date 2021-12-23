import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color surfaceColor = const Color(0x0dffffff);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.deepPurple,
        primaryColor: Colors.pink.shade400,
        brightness: Brightness.dark,
        dividerColor: surfaceColor,
        dividerTheme: const DividerThemeData(indent: 30, endIndent: 30),
        scaffoldBackgroundColor: const Color.fromARGB(255, 30, 30, 30),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        textTheme: GoogleFonts.latoTextTheme(
          const TextTheme(
              bodyText2: TextStyle(fontSize: 15),
              bodyText1: TextStyle(
                  fontSize: 13, color: Color.fromARGB(200, 255, 255, 255)),
              headline6: TextStyle(fontWeight: FontWeight.bold),
              subtitle1: TextStyle(fontSize: 17, fontWeight: FontWeight.w900)),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Brice Seraphin',
                            style: Theme.of(context).textTheme.subtitle1),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text('Product & Print Designer'),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              CupertinoIcons.location,
                              size: 14,
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Text(
                              'Paris, France',
                              style: Theme.of(context).textTheme.caption,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Icon(
                    CupertinoIcons.heart,
                    color: Theme.of(context).primaryColor,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 0, 32, 16),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut laboreim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea ',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 16, 32, 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Skills',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(fontWeight: FontWeight.w900)),
                  const SizedBox(
                    width: 2,
                  ),
                  const Icon(
                    CupertinoIcons.chevron_down,
                    size: 12,
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            Center(
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 8,
                runSpacing: 8,
                children: [
                  const Skill(
                    title: 'Photoshop',
                    imagePath: 'assets/images/app_icon_01.png',
                    shadowColor: Colors.blue,
                    isActive: true,
                  ),
                  const Skill(
                    title: 'Adobe XD',
                    imagePath: 'assets/images/app_icon_05.png',
                    shadowColor: Colors.pink,
                    isActive: false,
                  ),
                  const Skill(
                    title: 'Illustrator',
                    imagePath: 'assets/images/app_icon_04.png',
                    shadowColor: Colors.orange,
                    isActive: false,
                  ),
                  Skill(
                    title: 'afterEffect',
                    imagePath: 'assets/images/app_icon_03.png',
                    shadowColor: Colors.blue.shade800,
                    isActive: false,
                  ),
                  const Skill(
                    title: 'Lightroom',
                    imagePath: 'assets/images/app_icon_02.png',
                    shadowColor: Colors.blue,
                    isActive: false,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class Skill extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color shadowColor;
  final bool isActive;

  const Skill({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.shadowColor,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      decoration: isActive
          ? BoxDecoration(
              color: Theme.of(context).dividerColor,
              borderRadius: BorderRadius.circular(12))
          : null,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 40,
            height: 40,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(title)
        ],
      ),
    );
  }
}
