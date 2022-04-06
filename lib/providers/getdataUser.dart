
import 'package:eiqro/services/Services.dart';
import 'package:flutter/widgets.dart';

import '../models/User.dart';

class ProviderUser with ChangeNotifier{
  User? _user;

  User get user => _user!;

  set user(User? user){
    _user = user;
    notifyListeners();
  }

   Future<void> getUSer() async {
    try {
     User user = await Services().getUser();
      _user = user;
    } catch (e) {
      print(e);
    }
  }
}