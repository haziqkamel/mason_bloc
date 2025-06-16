abstract class {{feature_name}}RemoteDataSource {
  Future<ChangePasswordResponse> changePassword(ChangePasswordRequest request);
}

class {{feature_name}}RemoteDataSourceImpl implements {{feature_name}}RemoteDataSource {
  final ApiProvider apiProvider;
  final SharedPreferencesManager sharedPreferencesManager;
  final SecureStorageManager secureStorageManager;

  {{feature_name}}RemoteDataSourceImpl(
      {required this.apiProvider,
      required this.sharedPreferencesManager,
      required this.secureStorageManager});

  @override
  Future<ChangePasswordResponse> changePassword(
      ChangePasswordRequest request) async {
    try {
      final data = request.toJson();
      final response = await apiProvider.changePassword(data);
      final statusCode = response.statusCode;

      if (statusCode != null && statusCode >= 200 && statusCode < 300) {
        return ChangePasswordResponse(success: true);
      }

      if (statusCode == 400) {
        try {
          final rawData = response.data;
          final parsed = rawData is String
              ? json.decode(rawData) as Map<String, dynamic>
              : rawData as Map<String, dynamic>;

          final message = parsed['message'] ?? 'Invalid request.';
          return ChangePasswordResponse(success: false, message: message);
        } catch (e) {
          return ChangePasswordResponse(
              success: false, message: 'Failed to parse error message.');
        }
      }

      return ChangePasswordResponse(
          success: false, message: 'Unexpected server response.');
    } catch (e) {
      rethrow;
    }
  }
}