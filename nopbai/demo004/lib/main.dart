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
      home: const MyHomePage(title: 'BÀI TẬP 1'),
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
        child: Column(children: [Row(children:const[Text('Edit Mood'),Icon(Icons.add_alert)],),
        Row(children: const[Text('ABOUT THE DEVELOPER')],),
        Row(children: [Row(children: [const Text('I`m Hashir, the developer of\nthis app. Feel free to\ncontact me anytime. I love\nhearing from you'),Image.asset('assets/img/animal1.jpg')],)],),
        Row(children:const[Text('Privacy and Terms'),Icon(Icons.add_alert)],),
        Row(children:const[Text('LICENCE'),Icon(Icons.add_alert)],)],
        ),
      ),
    );
  }
}
