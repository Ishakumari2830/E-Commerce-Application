import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_comrc/data/repositories/user/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../utils/exceptions/firebase_auth_exceptions.dart';
import '../../../utils/exceptions/format_exceptions.dart';
import '../../../utils/exceptions/plaform_exceptions.dart';

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

 ///function to save userdata to firestore
  Future<void> saveUserRecord(UserModel user)async {
    try{
       await _db.collection('Users').doc(user.id).set(user.toJson());
    } on FirebaseException catch (e){
      throw TFirebaseAuthException(e.code).message;
    } on FormatException catch (_){
      throw TFormatException();
    } on PlatformException catch (e){
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw ' Something went Wrong ,Please try again';
    }

  }

  /// function to fetch user details based on used id
///  fuction to update user data in firestore
///  update any field in specific users collection
///  function to remove user data from firestore
///  upload any image
}