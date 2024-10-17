import 'package:firebase_auth/firebase_auth.dart';

class RegistrationController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> registerWithEmailPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
