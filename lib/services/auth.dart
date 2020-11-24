import 'package:firebase_auth/firebase_auth.dart';
import 'package:yibe_final_ui/model/user.dart';
import 'package:yibe_final_ui/services/userdatabase.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  UserDetails _userFromFireBaseUser(User user) {
    return user != null ? UserDetails(uid: user.uid) : null;
  }

  Stream<UserDetails> get user {
    return _auth
        .authStateChanges()
        .map((User user) => _userFromFireBaseUser(user));
  }

  Future register(String username, String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;

      await UserDatabaseService(uid: user.uid).updateUserData(username, email);
      return _userFromFireBaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      return _userFromFireBaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
