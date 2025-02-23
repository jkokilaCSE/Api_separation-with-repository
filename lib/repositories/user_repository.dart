import '../data/models/user_model.dart';
import '../data/providers/api_provider.dart';

class UserRepository {
  final ApiProvider apiProvider;

  UserRepository({required this.apiProvider});

  Future<List<User>> getUsers() async {
    return await apiProvider.fetchUsers();
  }
}
