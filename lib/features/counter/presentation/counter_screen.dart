import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/counter_notifier.dart';
import 'package:riverpod/riverpod.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterNotifierProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Compteur : ${counter.count}',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => ref.read(counterNotifierProvider.notifier).decrement(),
                  child: const Text('-'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => ref.read(counterNotifierProvider.notifier).reset(),
                  child: const Text('Réinitialiser'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => ref.read(counterNotifierProvider.notifier).increment(),
                  child: const Text('+'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}