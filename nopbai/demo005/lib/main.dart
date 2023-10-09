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
      title: 'Flutter Demo',
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
            children: [Row(children: [Image.asset('assets/img/animal.jpg')],),
            Row(children: [Column(children: const[Text('1984'),Text('George Orwell - Silence Fiction')],)],),
            Row(children: [Column(children: const[Icon(Icons.store),Text('Search store')],),
            Column(children: const[Icon(Icons.bookmark),Text('Bookmark')],),
            Column(children: const[Icon(Icons.add),Text('Mark as read')],)],),
            Row(children: [Column(children: const[Text('Description'),Text('<p>1984 is a dystoplan novel by English author George Orwell published in 1949')],)],)],
        ),
      ),
    );
  }
}
