import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> signUpUser({
    required String firstname,
    required String lastname,
    required String email1,
    required String username,
    required String password,
  }) async {
    String error = "Error occured";
    try {
      if (email1.isNotEmpty ||
          password.isNotEmpty ||
          username.isNotEmpty ||
          firstname.isNotEmpty ||
          lastname.isNotEmpty) {
        UserCredential credential = await _auth.createUserWithEmailAndPassword(
            email: email1, password: password);

        print(credential.user!.uid);

        await _firestore.collection('users').doc(credential.user!.uid).set({
          'username': username,
          'uid': credential.user!.uid,
          'email': email1,
          'followers': [],
          'following': []
        });
        error = "Success";
        return error;
      }
    } catch (err) {
      error = err.toString();
    }
    return error;
  }
}
