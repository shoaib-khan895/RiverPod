import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../logic/counter_logic.dart';

// ///example of Provider
// final name = Provider((ref) => 'Hello Shoaib');
//
// ///example of StateProvider
// final counter = StateProvider<int>((ref) => 0);

///example of StateNotifierProvider
final counterProvider =
    StateNotifierProvider<CounterLogic, int>((ref) => CounterLogic());

class StateNotifierDemo extends ConsumerWidget {
  const StateNotifierDemo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ///ref.watch listen the changes in provider state and rebuild the widget.
    final count = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text('Riverpod')),
      body: Center(
        child: Text(
          '$count',
          style: TextStyle(fontSize: 36),
        ),
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () {
                ///ref.read is use to read value once.
                //read the state and add 1
                // ref.read(counter.notifier).state++;
                // ref.read(counter.notifier).update((state) => state + 1);
                ref.read(counterProvider.notifier).increment();
              },
              child: Icon(Icons.add),
            ),
            FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () {
                ///ref.read is use to read value once.
                //read the state and add 1
                // ref.read(counter.notifier).state++;
                // ref.read(counter.notifier).update((state) => state + 1);
                ref.invalidate(counterProvider);
              },
              child: Icon(Icons.refresh),
            ),
            FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () {
                ///ref.read is use to read value once.
                //read the state and add 1
                // ref.read(counter.notifier).state++;
                // ref.read(counter.notifier).update((state) => state + 1);
                ref.read(counterProvider.notifier).decrement();
              },
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ],
    );
  }
}
