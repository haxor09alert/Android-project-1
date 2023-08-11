import 'package:objectbox/objectbox.dart';

@Entity()
class User {
  @Id(assignable: true)
  int? id;

  String? name;
  String? email;
  int? age;
  String? password;
  String? address;

  User(
      {
      required this.name,
      required this.email,
      required this.age,
      required this.password,
      required this.address
      });
}
