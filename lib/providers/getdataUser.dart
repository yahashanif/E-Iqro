
import 'package:eiqro/services/Services.dart';
import 'package:eiqro/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../models/User.dart';

class ProviderUser with ChangeNotifier{
  final box = GetStorage();
  User? _user;

  User get user => _user!;

  set user(User? user){
    _user = user;
    notifyListeners();
  }

   Future<void> getUSer(String noTelp,String password) async {
    try {
     User user = await Services().login(noTelp,password);
      _user = user;
      
      box.write("token", _user!.token);
      // print(box.read("token"));
      
      if(_user != null){
        Get.offAll(MainPage());
      }
    } catch (e) {
      print(e);
      Get.snackbar("Login Gagal", "Password Atau No Telp Salah",backgroundColor: Colors.red,colorText: Colors.white);
    }
  }
}