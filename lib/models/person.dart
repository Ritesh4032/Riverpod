import 'package:equatable/equatable.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Person extends Equatable {
  final int id;
  final String name;
  final String emailadress;
  const Person({
    required this.id,
    required this.name,
    required this.emailadress,
  });

  @override
  String toString() =>
      'person(id: $id, name: $name, emailadress: $emailadress)';

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

  @override
  @override
  List<Object> get props => [id, name, emailadress];
}
