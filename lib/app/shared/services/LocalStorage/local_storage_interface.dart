abstract class ILocalStorageService {
  Future<Map<String, dynamic>?> read(String directory);
  Future write(dynamic documents, {String directory});
  Future clear();
  Future<bool> checkIfDirectoryExists(String directory);

  Future writeVersion(String version);
  Future<bool> checkVersion(String lastVersion);

  Future<Map<String, dynamic>?> readUser();
  Future<void> writeUser(Map<String, dynamic> user);
  Future clearLogout();
}
