import 'package:freezed/freezed.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    @JsonKey('id') required String id,
    @JsonKey('title') required String title,
    @JsonKey('description') required String description,
    @JsonKey('completed') required bool completed,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}