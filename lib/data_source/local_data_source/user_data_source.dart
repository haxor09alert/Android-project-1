import 'package:tailormade/helper/objectbox.dart';
import 'package:tailormade/models/user.dart';
import 'package:tailormade/state/objectbox_state.dart';

class UserDataSource {
  ObjectBoxInstance get objectBoxInstance => ObjectBoxState.objectBoxInstance!;
  Future<int> addUser(User user) async {
    try {
      return objectBoxInstance.addUser(user);
    } catch (e) {
      return Future.value(0);
    }
  }

  Future<List<User>> getUsers() {
    try {
      return Future.value(objectBoxInstance.getAllUser());
    } catch (e) {
      throw Exception('Error in getting all users');
    }
  }

  Future<User?> loginUser(String email, String password) {
    try {
      return Future.value(objectBoxInstance.loginUser(email, password));
    } catch (e) {
      return Future.value(null);
    }
  }
}
