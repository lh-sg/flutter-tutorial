import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Cross the road',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Scratch',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ], // children
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('31'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        '🤖シンガポールのプログラミング教室✨'
        '🤖プログラミングを楽しく学ぶ✨'
        '🤖生徒の作品を発信✨'
        '🤖教室はマリーナスクエア内✨',
        softWrap: true
      ),
    );

    return MaterialApp(
      title: 'LHS flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Little Hackers Singapore'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/niku.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
              ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  } // Widget build end

  Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
              margin: const EdgeInsets.only(top: 8),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: color,
                ),
              ))
        ],
      );
    } // Column _buildButtonColumn end
}
