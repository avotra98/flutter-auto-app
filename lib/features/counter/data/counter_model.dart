part 'counter_model.g.dart';

import 'package:freezed/freezed.dart';
import 'package:json_annotation/json_annotation.dart';

@freezed
class Counter with _$Counter {
  const factory Counter({
    @JsonKey('value') required int value,
  }) = _Counter;

  factory Counter.fromJson(Map<String, dynamic> json) => _$CounterFromJson(json);
}