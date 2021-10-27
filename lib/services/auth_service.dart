import 'package:firebase_auth/firebase_auth.dart';
import 'package:kksi/models/user.dart';
import 'package:kksi/services/user_service.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signIn(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      UserModel user =
          await UserService().getUserById(userCredential.user!.uid);
      return user;
    } catch (e) {
      throw e;
    }
  }

  Future<UserModel> signUp({
    required String email,
    required String password,
    required String name,
    String hobi = '',
  }) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      UserModel user = UserModel(
        id: userCredential.user!.uid,
        email: email,
        // name: name,
        hobi: hobi,
        balance: 280000000,
        role: 'siswa',
      );

      await UserService().setUser(user);

      return user;
    } catch (e) {
      throw e;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      throw e;
    }
  }
}
