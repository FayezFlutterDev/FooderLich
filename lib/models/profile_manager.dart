import 'package:flutter/material.dart';

import 'models.dart';

class ProfileManager extends ChangeNotifier {
  User get getUser => User(
        firstName: 'Abdallah',
        lastName: 'Fayez',
        role: 'Software Engineer',
        profileImageUrl: 'assets/profile_pics/photo.png',
        points: 100,
        darkMode: _darkMode,
      );

  bool get didSelectUser => _didSelectUser;
  bool get didTapOnRaywenderlich => _tapOnRaywenderlich;
  bool get darkMode => _darkMode;

  var _didSelectUser = false;
  var _tapOnRaywenderlich = false;
  var _darkMode = false;

  set darkMode(bool darkMode) {
    _darkMode = darkMode;
    notifyListeners();
  }

  void tapOnRaywenderlich(bool selected) {
    _tapOnRaywenderlich = selected;
    notifyListeners();
  }

  void tapOnProfile(bool selected) {
    _didSelectUser = selected;
    notifyListeners();
  }
}