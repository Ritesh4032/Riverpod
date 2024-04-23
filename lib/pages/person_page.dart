import 'package:flutter/material.dart';
import 'package:riverpod/models/person.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});
  Person generatePerson(
      {required int id, required String name, required String emailadress}) {
    return Person(id: id, name: name, emailadress: emailadress);
  }

  @override
  Widget build(BuildContext context) {
    final person1 = generatePerson(
        id: 1, name: 'Ritesh', emailadress: 'kshetrireetesh@gmail.com');
    final person2 =
        person1.copyWith(id: 2, emailadress: 'reeteshkshetri@gmail.com');
    final person3 = generatePerson(
        id: 1, name: 'Ritesh', emailadress: 'kshetrireetesh@gmail.com');
    print(person1);
    print(person2);
    print(person1 == person3);
    print(person1.hashCode);
    print(person3.hashCode);
    return Scaffold(
      appBar: AppBar(
        title: Text('Person'),
      ),
    );
  }
}
