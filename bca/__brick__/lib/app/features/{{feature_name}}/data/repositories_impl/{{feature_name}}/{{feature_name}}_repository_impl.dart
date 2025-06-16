class {{feature_name}}RepositoryImpl implements {{feature_name}}Repository {
  final {{feature_name}}RemoteDataSource remoteDataSource;
  final {{feature_name}}LocalDataSource localDataSource;
  final SharedPreferencesManager sharedPreferencesManager;
  final SecureStorageManager secureStorageManager;

  {{feature_name}}RepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
    required this.sharedPreferencesManager,
    required this.secureStorageManager,
  });

   @override
  Future<bool> login({required LoginRequest request}) {
    return remoteDataSource.login(request: request);
  }
}