import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/state_notifier_demo/screens/state_notifier_demo.dart';

void main() {
  ///change screens to see demo.
  ///StateProviderDemo
  ///FutureProviderDemo
  runApp(ProviderScope(child: MaterialApp(home: StateNotifierDemo())));
}
