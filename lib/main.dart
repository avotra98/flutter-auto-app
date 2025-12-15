```dart
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'lib/features/counter/presentation/counter_screen.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Counter App',
      useMaterial3: true,
      theme: ThemeData(),
      home: CounterScreen(),
    );
  }
}
```