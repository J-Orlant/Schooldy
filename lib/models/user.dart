import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  // final String name;
  final String hobi;
  // final String hobi;
  final int balance;
  final String role;

  UserModel({
    required this.id,
    required this.email,
    required this.role,
    // required this.name,
    this.hobi = '',
    this.balance = 0,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [id, email, role];
}
