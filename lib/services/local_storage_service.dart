import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  Future<void> saveUser(String email, String password) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email);
    await prefs.setString('password', password);
  }

  Future<bool> authenticateUser(String email, String password) async {
    final prefs = await SharedPreferences.getInstance();
    final storedEmail = prefs.getString('email');
    final storedPassword = prefs.getString('password');
    return storedEmail == email && storedPassword == password;
  }
}