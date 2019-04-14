import 'package:flutter/material.dart';

import './counter_provider.dart';
import './counter_bloc.dart';

class Counter extends StatefulWidget {
  @override
  CounterState createState() => CounterState();
}

class CounterState extends State<Counter> {
  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.getCount,
      initialData: CounterProvider().count,
      builder: (context, snapshot) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed button this many times:'),
            Text(
              '${snapshot.data}'
            )
          ],
        ),
      ),
    );
  }
}