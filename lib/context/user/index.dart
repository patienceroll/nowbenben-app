import 'package:flutter/foundation.dart';

import 'package:determined/api/user/type.dart';

class UserContext with ChangeNotifier {
  User _user;
  UserContext(this._user);

  void setUser(User user) {
    _user = user;
    notifyListeners();
  }
}
