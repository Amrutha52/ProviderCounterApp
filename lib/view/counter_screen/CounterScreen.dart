import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providersample/controller/counter_screen_controller.dart';
import 'package:providersample/view/counter_second_screen/CounterSecondScreen.dart';

class CounterScreen extends StatefulWidget
{
  const CounterScreen({super.key, required this.title});

  final String title;

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen>
{
  //int _counter = 0;

  void _incrementCounter()
  {
    // setState(() {
    //   _counter++;
    // });
  }

  @override
  Widget build(BuildContext context)
  {

    final counterProvider = Provider.of<CounterScreenController>(context);

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              counterProvider.count.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CounterSecondScreen()));
                },
                child: Text("Next Screen")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Provider.of<CounterScreenController>(context, listen: false).increment();
          // function vilikumbol listen = false kodukanam,
          //function call cheyumbol nammal listen cheyunilla, call aane cheyunee, thats y listen set into false.
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
