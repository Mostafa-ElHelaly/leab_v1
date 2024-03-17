import 'package:leap/core/resource_manager/string_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Methods {
//singleton class
  Methods._internal();

  static final   instance =   Methods._internal() ;

  factory  Methods() => instance ;
  Future<void> saveUserToken({String? authToken}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if (authToken != null) {
      preferences.setString(StringManager.userTokenKey, authToken);
    } else {
      preferences.setString(StringManager.userTokenKey, authToken ?? "noToken");
    }
  }
  Future<String> returnUserToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String tokenPref =
        preferences.getString(StringManager.userTokenKey) ?? "noToken";
    return tokenPref;
  }

}