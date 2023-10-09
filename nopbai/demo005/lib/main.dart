import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Bai Tap 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'BÀI TẬP 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [Image.asset('assets/img/animal.jpg')],
            ),
            Row(
              children: [
                Column(
                  children: const [
                    Text('1984'),
                    Text('George Orwell - Silence Fiction')
                  ],
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: const [Icon(Icons.store), Text('Search store')],
                ),
                Column(
                  children: const [Icon(Icons.bookmark), Text('Bookmark')],
                ),
                Column(
                  children: const [Icon(Icons.add), Text('Mark as read')],
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  // chứa một widget con và mở rộng or co lại không gian của row hoặc column or Flex
                  child: Container(
                    // là 1 hộp chứa child, width, height, color, padding (lề giữa) có đối tượng edgeInsets lề all,
                    // margin (lề xquanh), decoration (chỉnh hình dạng, hình ảnh)
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                      'Alps. Situated 1,578 meters above sea level, it is one of the '
                      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                      'half-hour walk through pastures and pine forest, leads you to the '
                      'lake, which warms to 20 degrees Celsius in the summer. Activities '
                      'enjoyed here include rowing, and riding the summer toboggan run.',
                      softWrap: true,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
