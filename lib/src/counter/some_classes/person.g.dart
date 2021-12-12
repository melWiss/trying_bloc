// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Person _$$_PersonFromJson(Map<String, dynamic> json) => _$_Person(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String?,
      lastName: json['lastName'] as String?,
      address: json['address'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      birthdate: json['birthdate'] == null
          ? null
          : DateTime.parse(json['birthdate'] as String),
    );

Map<String, dynamic> _$$_PersonToJson(_$_Person instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lastName': instance.lastName,
      'address': instance.address,
      'email': instance.email,
      'password': instance.password,
      'birthdate': instance.birthdate?.toIso8601String(),
    };
