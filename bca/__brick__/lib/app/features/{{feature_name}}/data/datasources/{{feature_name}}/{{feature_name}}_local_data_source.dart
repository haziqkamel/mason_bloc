abstract class {{feature_name}}LocalDataSource {
  Future<String?> getAccessToken();
  Future<void> removeAccessToken();
  Future<void> setAccessToken(String userToken);
  
}

class {{feature_name}}LocalDataSourceImpl implements {{feature_name}}LocalDataSource {
  final SharedPreferencesManager sharedPreferencesManager;
  final SecureStorageManager secureStorageManager;

  {{feature_name}}LocalDataSourceImpl(
      {required this.sharedPreferencesManager,
      required this.secureStorageManager});

  @override
  Future<String?> getAccessToken() async {
    return await secureStorageManager
        .getString(SecureStorageManager.keyAccessToken);
  }

  @override
  Future<String?> getClientResetPasswordToken() async {
    return sharedPreferencesManager
        .getString(SharedPreferencesManager.clientResetPasswordToken);
  }

  @override
  Future<void> setAccessToken(String userToken) async {
    return await secureStorageManager.putString(
        SecureStorageManager.keyAccessToken, userToken);
  }}