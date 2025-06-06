import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<void> signInWithGoogle() async {
  final googleUser = await GoogleSignIn().signIn();
  if (googleUser == null) return; // ユーザーがキャンセル

  final googleAuth = await googleUser.authentication;

  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );

  await FirebaseAuth.instance.signInWithCredential(credential);
  print('✅ Googleでサインイン: ${FirebaseAuth.instance.currentUser?.email}');
}