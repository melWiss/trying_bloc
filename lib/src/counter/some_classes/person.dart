import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@Freezed()
class Person with _$Person {
  const factory Person({
    @Default(0) int id,
    String? name,
    String? lastName,
    String? address,
    String? email,
    String? password,
    DateTime? birthdate,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
