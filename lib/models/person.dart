// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Person extends Equatable {
  final int id;
  final String name;
  final String emailadress;
  const Person({
    required this.id,
    required this.name,
    required this.emailadress,
  });

  Person copyWith({
    int? id,
    String? name,
    String? emailadress,
  }) {
    return Person(
      id: id ?? this.id,
      name: name ?? this.name,
      emailadress: emailadress ?? this.emailadress,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'emailadress': emailadress,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      id: map['id'] as int,
      name: map['name'] as String,
      emailadress: map['emailadress'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) =>
      Person.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [id, name, emailadress];
}
