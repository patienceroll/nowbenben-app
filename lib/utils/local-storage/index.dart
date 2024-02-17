import "package:shared_preferences/shared_preferences.dart";

Future<SharedPreferences> getLocalStorage() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs;
}

class LocalStorage {
  SharedPreferences? instance;
  LocalStorage() {
    initInstance();
  }

  void initInstance() async {
    instance ??= await SharedPreferences.getInstance();
  }

  Future<bool> setString(String key, String value) async {
    if (instance is SharedPreferences) {
      return instance!.setString(key, value);
    } else {
      return (await SharedPreferences.getInstance()).setString(key, value);
    }
  }

  Future<String?> getString(String key) async {
    if (instance is SharedPreferences) {
      return instance!.getString(key);
    } else {
      return (await SharedPreferences.getInstance()).getString(key);
    }
  }
}

final LocalStorage localStorage = LocalStorage();
