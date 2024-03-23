import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int x = 5;
  String date = DateFormat('yyyy-MM-dd ').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider"),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(date),
            Center(
              child: Text(
                x.toString(),
                style: const TextStyle(fontSize: 50),
              ),
            )
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x++;
          print(x);
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
