import 'package:flutter/material.dart';
import 'package:todolist/views/home/home_view.dart';
import 'package:todolist/views/home/widget/task_view.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo List',
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Colors.black, 
            fontSize: 45,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
          displayMedium: TextStyle( 
            color: Colors.white,
            fontSize: 21,
          ),
          displaySmall: TextStyle( 
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          headlineMedium: TextStyle( 
            color: Colors.grey,
            fontSize: 17,
          ),
          headlineSmall: TextStyle( 
            color: Colors.black,
            fontSize: 16, 
          ),
          titleSmall: TextStyle( 
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ), 
          titleLarge: TextStyle( 
            fontSize: 40,
            color: Colors.black,
            fontWeight: FontWeight.w300,  
          )
      ),
      ),
      home: const TaskView(),
    );
  }
}

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Hellow World!', style: Theme.of(context).textTheme.displayLarge),
      ),

    );
  }
}