import 'package:flutter/material.dart';
import './counter.dart';
import './counter_bloc.dart';

class Post extends StatelessWidget {
  void _increment() {
    bloc.updateCount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post'),
      ),
      body: Counter(),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        tooltip: 'increment',
      ),
    );
  }
}