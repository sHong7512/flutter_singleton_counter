import 'package:flutter/material.dart';
import 'package:singleton_counter/counter.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NonSingletonCounter nCounter = NonSingletonCounter();
  SingletonCounter sCounter = SingletonCounter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Singleton Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('non SingleTon'),
            const SizedBox(height: 8),
            Text('${nCounter.count}'),
            ElevatedButton(
              onPressed: () {
                nCounter.add();
                setState(() {});
              },
              child: const Text('Add'),
            ),
            ElevatedButton(
              onPressed: () {
                nCounter = NonSingletonCounter();
                setState(() {});
              },
              child: const Text('Initialize'),
            ),
            const SizedBox(height: 16),
            const Text('SingleTon'),
            const SizedBox(height: 8),
            Text('${sCounter.count}'),
            ElevatedButton(
              onPressed: () {
                sCounter.add();
                setState(() {});
              },
              child: Text('Add'),
            ),
            ElevatedButton(
              onPressed: () {
                sCounter = SingletonCounter();
                setState(() {});
              },
              child: Text('Initialize'),
            ),
          ],
        ),
      ),
    );
  }
}
