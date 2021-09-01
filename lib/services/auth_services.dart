part of 'services.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<SignInResult> signUp(
      String email, String password, String name, String address) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      User user = result.user.convertToUser(
        name: name,
        address: address,
      );

      await UserServices.updateUser(user);

      return SignInResult(user: user);
    } catch (e) {
      return SignInResult(message: e.toString().split(',')[1].trim());
    }
  }

  static Future<SignInResult> signIn(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      User user = await result.user.fromFireStore();

      return SignInResult(user: user);
    } catch (e) {
      return SignInResult(message: e.toString().split(',')[1].trim());
    }
  }

  static Future<void> signOut() async {
    await _auth.signOut();
  }

  static Stream<FirebaseUser> get userStream => _auth.onAuthStateChanged;
}

class SignInResult {
  final User user;
  final String message;

  SignInResult({this.user, this.message});
}
