import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:uado/models/User.dart';

class AuthService {

  Future<String?> registration({required String firstname, required String lastname, required String email, required String password, required String phoneNumber}) async {
    try {

      UserCredential result = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      var user = result.user;
      user?.updateDisplayName(firstname+" "+lastname);
      // Create user profile


      Map<String, String> user_profile = {
        "first_name":firstname,
        "second_name":lastname,
        "phone_number":phoneNumber,
        "email":email,
        "profile_pic_url":"https://example.com/${user?.uid}.png"
      };
      Map<String, Map> profile = {
        "profile" : user_profile
      };
      if(user != null) {
        FirebaseFirestore.instance.collection("users").doc(user.uid).set(profile)
            .then((value) => print("Profile created"))
            .catchError((error) => {
              print('Error creating profile : $error')
            });
      }
      print("user id: ${result.user?.uid}");
      return 'Success';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return 'The password provided is. too weak.';
      } else if (e.code == 'email-already-in-use') {
        return 'The account already exists for that email.';
      } else {
        return e.message;
      }
    } catch (e) {
      return e.toString();
    }
  }

  Future<String?> login({required String email, required String password,}) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      print("Logged in user id : ${FirebaseAuth.instance.currentUser?.uid}");
      await getUserProfile();
      return 'Success';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user.';
      } else {
        return e.message;
      }
    } catch (e) {
      return e.toString();
    }
  }

  Future<AppUser?> getUserProfile() async {
    AppUser? user;
    DocumentReference docRef = FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser?.uid);


    docRef.get().then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        var data = documentSnapshot.data() as Map<String, dynamic>;

        user = AppUser(
          email: data['profile']["email"] ?? "",
          password:"",
          phonenumber: data['profile']["phone_number"] ?? "",
          firstname: data['profile']["first_name"] ?? "",
          profilePicUrl: data['profile']["profile_pic_url"] ?? "",
          lastname: data['profile']["last_name"] ?? "",
        );
      } else {
        print('Document does not exist on the database');
      }
    }).catchError((error) {
      print('Error getting document: $error');
    });
    return user;
  }

  static Future<User?> signInWithGoogle({required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    if (kIsWeb) {
      GoogleAuthProvider authProvider = GoogleAuthProvider();

      try {
        final UserCredential userCredential =
        await auth.signInWithPopup(authProvider);

        user = userCredential.user;
      } catch (e) {
        print(e);
      }
    } else {
      final GoogleSignIn googleSignIn = GoogleSignIn();

      final GoogleSignInAccount? googleSignInAccount =
      await googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        try {
          final UserCredential userCredential =
          await auth.signInWithCredential(credential);

          user = userCredential.user;
        } on FirebaseAuthException catch (e) {
          if (e.code == 'account-exists-with-different-credential') {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("The account already exists with a different credential."),
              ),
            );
          } else if (e.code == 'invalid-credential') {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Error occurred while accessing credentials. Try again."),
              ),
            );
          }
        } catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Error occurred using Google Sign-In. Try again."),
            ),
          );
        }
      }
    }

    return user;
  }
}