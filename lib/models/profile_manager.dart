import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  static const darkKey = "DARK";

  bool get didSelectUser => _didSelectUser;
  bool get didTapOnRaywenderlich => _tapOnRaywenderlich;
  bool get darkMode => _darkMode;

  bool _didSelectUser = false;
  bool _tapOnRaywenderlich = false;
  bool _darkMode = false;

  ProfileManager() {
    getDarkMode();
  }

  Future<void> setDarkMode({required bool darkMode}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(darkKey, darkMode);
    _darkMode = darkMode;
    notifyListeners();
  }

  Future<bool> getDarkMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    _darkMode = prefs.getBool(darkKey) ?? false;
    notifyListeners();
    return darkMode;
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
