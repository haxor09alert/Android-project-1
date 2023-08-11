import 'package:tailormade/data_source/local_data_source/user_data_source.dart';
import 'package:tailormade/models/user.dart';

abstract class UserRepository {
  Future<List<User>> getUsers();
  Future<int> addUser(User user);
  Future<User?> loginUser(String email, String password);
}

class UserRepositoryImpl extends UserRepository {
  @override
  Future<int> addUser(User user) {
    return UserDataSource().addUser(user);
  }

  @override
  Future<List<User>> getUsers() {
    return UserDataSource().getUsers();
  }

  @override
  Future<User?> loginUser(String email, String password) {
    return UserDataSource().loginUser(email, password);
  }
}
