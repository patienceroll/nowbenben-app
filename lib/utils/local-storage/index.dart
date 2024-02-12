import "package:shared_preferences/shared_preferences.dart";

// // Obtain shared preferences.

// // Save an integer value to 'counter' key.
// await prefs.setInt('counter', 10);
// // Save an boolean value to 'repeat' key.
// await prefs.setBool('repeat', true);
// // Save an double value to 'decimal' key.
// await prefs.setDouble('decimal', 1.5);
// // Save an String value to 'action' key.
// await prefs.setString('action', 'Start');
// // Save an list of strings to 'items' key.
// await prefs.setStringList('items', <String>['Earth', 'Moon', 'Sun']);

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
