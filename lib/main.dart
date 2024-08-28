import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providersample/controller/counter_screen_controller.dart';
import 'package:providersample/view/counter_screen/CounterScreen.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return ChangeNotifierProvider(
      create: (context) => CounterScreenController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const CounterScreen(title: 'Provider Home Page'),
      ),
    );
  }
}


