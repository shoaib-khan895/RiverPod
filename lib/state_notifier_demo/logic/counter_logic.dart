import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterLogic extends StateNotifier<int> {
  CounterLogic() : super(0);

  increment() => state++;
  decrement() => state--;
}
