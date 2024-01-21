import 'package:adidas_mobile_app/screens/auth_screens/signin_page.dart';
import 'package:adidas_mobile_app/screens/home_screens/HomePage/home_page.dart';
import 'package:adidas_mobile_app/utils/custom_navigator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class AuthController {
  void listenToAuthState(BuildContext context) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        Logger().e('User is currently signed out!');
        CustomNavigator.goTo(context, const SignInPage());
      } else {
        Logger().f('User is signed in! >>>> ${user.uid}');
        CustomNavigator.goTo(context, const HomePage());
      }
    });
  }

  Future<void> createUserAccount(
      {required String email, required String password}) async {
    try {
//      final credential =
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Logger().e('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Logger().f('The account already exists for that email.');
      }
    } catch (e) {
      Logger().e(e);
    }
  }

  Future<void> signOutUser() async {
    await FirebaseAuth.instance.signOut();
  }

  Future<void> signIntUser(
      {required String email, required String password}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      Logger().e(e.code);
      if (e.code == 'user-not-found') {
        Logger().e('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        Logger().e('Wrong password provided for that user.');
      }
    } catch (e) {
      Logger().e(e);
    }
  }

  Future<void> sendPasswordResetEmail(BuildContext context,
      {required String email}) async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: email)
          .then((value) {
        Navigator.pop(context);
        Logger().f("Email sent.");
      });
    } catch (e) {
      Logger().e(e);
    }
  }
}
