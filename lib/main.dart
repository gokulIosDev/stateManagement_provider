import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wslc_counter_provider/counterapp.dart';
import 'package:wslc_counter_provider/counterprovider.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>CounterProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: CounterApp(),
      ),
    );
  }
}

