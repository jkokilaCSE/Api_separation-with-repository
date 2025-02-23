import 'package:dio/dio.dart';
import '../models/user_model.dart';

class ApiProvider {
  final Dio _dio = Dio();

  Future<List<User>> fetchUsers() async {
    try {
      final response = await _dio.get(
        'https://jsonplaceholder.typicode.com/users',
      );
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        return data.map((user) => User.fromJson(user)).toList();
      } else {
        throw Exception('Failed to load users');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
