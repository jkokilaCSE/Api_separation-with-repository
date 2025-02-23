import 'package:get/get.dart';
import '../data/models/user_model.dart';
import '../repositories/user_repository.dart';

class UserController extends GetxController {
  final UserRepository userRepository;
  var users = <User>[].obs;
  var isLoading = true.obs;

  UserController({required this.userRepository});

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  void fetchUsers() async {
    try {
      isLoading(true);
      var fetchedUsers = await userRepository.getUsers();
      users.value = fetchedUsers;
    } finally {
      isLoading(false);
    }
  }
}
