```dart
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:your_app_name/features/task/data/task_model.dart';
import 'package:your_app_name/features/task/presentation/task_list_controller.dart';

class TaskListScreen extends ConsumerWidget {
  const TaskListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasks = ref.watch(taskListControllerProvider);

    return Scaffold(
      body: tasks.when(
        data: (tasks) {
          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              final task = tasks[index];

              return ListTile(
                title: Text(task.title),
                subtitle: Text(task.description),
              );
            },
          );
        },
        error: (error, _) {
          return Center(
            child: Text('Erreur : $error'),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
```