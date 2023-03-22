import 'package:map_mvvm/service_stream.dart';

abstract class FireAuth with ServiceStream {
  //This is the interface for the firestore service
  //All method declaration for the firestore service is declared here and implemented in the firestore_service.dart
  signIn(String email, String password);
  signOut(String email, String password);
  resetPassword(String email);
  Future<String> createAccount(String email, String password);
  bool isUserSignOn();
  deleteUserAuth();
  reAuthenticate(String email, String password);
}