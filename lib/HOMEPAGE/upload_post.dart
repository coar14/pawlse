import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class FirestoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //upload
  Future<String> uploadPost(
    String description,
    String uid,
    String tags,
  ) async {
    String res = "Error";
    try {
      String postId = const Uuid().v1();
      await _firestore.collection('posts').doc(postId).set({
        'description': description,
        'uid': uid,
        'postId': postId,
        'time': '${DateTime.now().hour}hrs ago',
        'tags': tags,
      });
      res = 'success';
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  Future<void> updatePost(
      String postId, String description, String tags) async {
    await _firestore
        .collection('posts')
        .doc(postId)
        .update({'description': description, 'tags': tags});
  }

  Future<void> deletePost(String postId) async {
    await _firestore.collection('posts').doc(postId).delete();
  }
}
