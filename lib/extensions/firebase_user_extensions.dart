part of 'extensions.dart';

extension FirebaseUserExtension on FirebaseUser {
  User convertToUser({
    String name = "No Name",
    String address = "Pandaan,Pasuruan,EastJava,Indonesia",
  }) =>
      User(
        this.uid,
        this.email,
        name: name,
        address: address,
      );

  Future<User> fromFireStore() async => await UserServices.getUser(this.uid);
}
