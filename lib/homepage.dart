import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/counter_provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Provider Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is the counter variable',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              context.watch<CounterProvider>().counter.toString(),
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 20,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().decreaseCounter();
            },
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().increaseCounter();
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
