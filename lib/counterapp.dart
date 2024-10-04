import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wslc_counter_provider/counterprovider.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        centerTitle: true,
      ),
      // body: Consumer<CounterProvider>(builder: (context, context1, lore) {}),
      body: Center(
        child: Text(
          counter.initialValue.toString(),
          style: const TextStyle(fontSize: 50),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){counter.increment();},child: const Icon(Icons.add),),
    );
  }
}
