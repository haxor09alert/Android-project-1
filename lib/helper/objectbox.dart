import '../models/user.dart';
import '../objectbox.g.dart';
import 'package:path_provider/path_provider.dart';

class ObjectBoxInstance {
  late final Store _store;
  late final Box<User> _user;

  ObjectBoxInstance(this._store) {
    _user = Box<User>(_store);
    insertUser();
  }

  static Future<ObjectBoxInstance> init() async {
    var dir = await getApplicationDocumentsDirectory();
    final store = Store(
      getObjectBoxModel(),
      directory: '${dir.path}/user_info',
    );

    return ObjectBoxInstance(store);
  }

  int addUser(User user) {
    return _user.put(user);
  }

  List<User> getAllUser() {
    return _user.getAll();
  }

  User getUserByEmail(String email) {
    return _user.query(User_.email.equals(email)).build().findFirst()!;
  }

  void insertUser() {
    List<User> lstUsers = getAllUser();
    if (lstUsers.isEmpty) {
      addUser(User(
          email: 'khadkasubina@gmail.com',
          password: 'subina123',
          name: 'Subina', 
          age: 22, address: 'Bhaktapur',
          ));
    }
  }

  User? loginUser(String email, String password) {
    return _user
        .query(User_.email.equals(email) & User_.password.equals(password))
        .build()
        .findFirst();
  }
}