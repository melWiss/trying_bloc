// this file will contain the counter model data
// we will use code generators here

import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_model.freezed.dart';
part 'counter_model.g.dart';

@Freezed()
class Counter with _$Counter {
  const factory Counter({
    @Default(0) int value,
    String? title,
  }) = _Counter;

  factory Counter.fromJson(Map<String, dynamic> json) =>
      _$CounterFromJson(json);
}
