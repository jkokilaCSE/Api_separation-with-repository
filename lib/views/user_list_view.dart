import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/user_controller.dart';
import '../data/providers/api_provider.dart';
import '../repositories/user_repository.dart';

class UserListView extends StatelessWidget {
  final UserController userController = Get.put(
    UserController(userRepository: UserRepository(apiProvider: ApiProvider())),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User List')),
      body: Obx(() {
        if (userController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: userController.users.length,
          itemBuilder: (context, index) {
            final user = userController.users[index];
            return ListTile(title: Text(user.name), subtitle: Text(user.email));
          },
        );
      }),
    );
  }
}
