import 'package:dio/dio.dart';
import 'package:riverpod/models/users.dart';

Future<List<User>> fetchUsers() async {
  try {
    final Response response =
        await Dio().get('https://jsonplaceholder.typicode.com/users');
    final List userlist = response.data;

    print(userlist[0]);

    final users = [for (final user in userlist) User.fromMap(user)];
    print(users[0]);
    return users;
  } catch (e) {
    rethrow;
  }
}
