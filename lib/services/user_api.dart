import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../contoller/auth_controller.dart';
import '../models/user_model.dart';
import 'helper.dart';

class UserApi {
  static FirebaseFirestore firestore = FirebaseFirestore.instance;
  static FirebaseAuth auth = FirebaseAuth.instance;

  static Future<bool> createUser(UserModel user) async {
    try {
      await firestore.collection("users").doc(user.id).set(user.toMap());
      return true;
    } on FirebaseException catch (err) {
      Helper.showError("error", err.code);
      return false;
    } catch (err) {
      Helper.showError("error", err.toString());
      return false;
    }
  }

  static Future<UserModel?> getUser(String uid) async {
    try {
      final DocumentSnapshot<Map<String, dynamic>> result =
          await firestore.collection("users").doc(uid).get();

      if (!result.exists) return null;
      final data = result.data();
      if (data != null) {
        return UserModel.fromMap(data);
      }
    } on FirebaseException catch (err) {
      Helper.showError("error", err.code);
      return null;
    } catch (err) {
      Helper.showError("error", err.toString());
      return null;
    }
    return null;
  }

  static Future<UserModel?> updateUser(UserModel user) async {
    try {
      await firestore.collection("users").doc(AuthController.to.user.value!.uid).set(user.toMap());

      return user;
    } on FirebaseException catch (err) {
      Helper.showError("error", err.code);
      return null;
    } catch (err) {
      Helper.showError("error", err.toString());
      return null;
    }
  }
}
