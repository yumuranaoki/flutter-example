import 'dart:async';

import './counter_provider.dart';

class CounterBloc {
  final counterController = StreamController();
  final CounterProvider provider = CounterProvider();

  Stream get getCount => counterController.stream;

  void updateCount() {
    provider.increaseCount();
    counterController.sink.add(provider.count);
  }

  void dispose() {
    counterController.close();
  }
}

final bloc = CounterBloc();