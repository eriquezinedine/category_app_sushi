import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auth {
  User? user;
  GoogleSignIn objGoogleSignIn = GoogleSignIn();

  Future<User?> signIn({required BuildContext context}) async {
    //! Ya que se abrira un Dialog hacemos referencia al arbol de Widget
    try {
      FirebaseAuth authenticator = FirebaseAuth.instance;

      GoogleSignInAccount? objGoogleSignInAccount =
          await objGoogleSignIn.signIn();

      if (objGoogleSignInAccount != null) {
        GoogleSignInAuthentication objGoogleSingInAuthentication =
            await objGoogleSignInAccount.authentication;
        AuthCredential credential = GoogleAuthProvider.credential(
            accessToken: objGoogleSingInAuthentication.accessToken,
            idToken: objGoogleSingInAuthentication.idToken);
        UserCredential userCredential =
            await authenticator.signInWithCredential(credential);
        user = userCredential.user;
        // tokenUser();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'sign_in_canceled') {
        debugPrint(e.toString());
        return user = null;
      } else {
        rethrow;
      }
    }

    return user;
  }

  Future<User?> signOut() async {
    //! Ya que se abrira un Dialog hacemos referencia al arbol de Widget

    await objGoogleSignIn.signOut();
    // remove();
    user = null;
    return user;
  }

  User? getUser() {
    return user;
  }
}
