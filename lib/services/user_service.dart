import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kksi/models/user.dart';
// import 'package:planetrip_app/models/user_model.dart';

class UserService {
  CollectionReference _userReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      _userReference.doc(user.id).set({
        'email': user.email,
        // 'name': user.name,
      });
    } catch (e) {
      throw e;
    }
  }

  Future<UserModel> getUserById(String id) async {
    try {
      DocumentSnapshot snapshot = await _userReference.doc(id).get();
      return UserModel(
        id: id,
        email: snapshot['email'],
        role: snapshot['role'],
      );
    } catch (e) {
      throw e;
    }
  }
}
