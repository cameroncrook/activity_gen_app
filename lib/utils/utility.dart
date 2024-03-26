import 'package:crypto/crypto.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

String hashPassword(String password) {
  var bytes = utf8.encode(password);
  var digest = sha256.convert(bytes);

  return digest.toString();
}

Future<bool> isLoggedIn() async {
  if (await getData("user") != null) {
    print(true);
    return true;
  } else {
    print(false);
    return false;
  }
}

Future<void> saveData(String key, String value) async {
  final storage = await SharedPreferences.getInstance();
  storage.setString(key, value);

  return;
}

Future<String?> getData(String key) async {
  final storage = await SharedPreferences.getInstance();
  return storage.getString(key);
}

Future<void> clearStorage() async {
  final storage = await SharedPreferences.getInstance();
  await storage.clear();
}