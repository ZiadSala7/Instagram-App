import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

addUserDataToFirestore(String email, String password, String phone, String age,
    String name, uid) async {
  // ignore: unused_local_variable
  CollectionReference user =
      FirebaseFirestore.instance.collection('newUsersData');
  user
      .doc(uid)
      .set({
        'email': email,
        'password': password,
        'name': name,
        'age': age,
        'phone': phone,
      })
      .then((value) => Fluttertoast.showToast(
          msg: 'Data is added Successfully',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0))
      // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
      .catchError((Error) => Fluttertoast.showToast(
          msg: 'Data is added Successfully',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0));
}
