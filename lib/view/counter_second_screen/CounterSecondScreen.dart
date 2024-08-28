import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/counter_screen_controller.dart';

class CounterSecondScreen extends StatefulWidget
{
  const CounterSecondScreen({super.key});

  @override
  State<CounterSecondScreen> createState() => _CounterSecondScreenState();
}

class _CounterSecondScreenState extends State<CounterSecondScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(150.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           InkWell(
             onTap: (){
               Provider.of<CounterScreenController>(context, listen: false).increment();
             },
             child:  Icon(Icons.add),
           )
          ],
        ),
      ),
    );
  }
}
