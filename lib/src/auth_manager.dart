import "dart:convert";
import "dart:io";

import "package:tgtg_client/tgtg_client.dart";

/// Filename of the auth credentials.
const _filename = "auth.json";

/// Manages the authentication process with the `JSON` file.
class AuthManager {
  /// The constructor of the `AuthManager`.
  AuthManager({
    required this.directory,
    required this.tgTgSettings,
  });

  /// The directory where the `JSON` file is stored.
  final Directory directory;

  /// The settings used by the [AuthManager].
  final TgTgSettings tgTgSettings;

  /// Create the `JSON` file in which the [TgTgCredentials] are stored.
  Future<void> createAuthFile() async {
    if (tgTgSettings.credentials != null) {
      try {
        File("${directory.path}/$_filename")
          ..create()
          ..writeAsString(jsonEncode(
            tgTgSettings.credentials!.toJson(),
          ));
      } catch (e) {
        throw Exception(e);
      }
    }
  }

  /// Get the last modified time of the `JSON` file in which the
  /// [TgTgCredentials] are stored.
  Future<DateTime?> getLastTimeTokenRefreshed() async {
    if (tgTgSettings.lastTimeTokenRefreshed != null) {
      return tgTgSettings.lastTimeTokenRefreshed!;
    } else {
      final file = File("${directory.path}/$_filename");
      if (await file.exists()) {
        return file.lastModified();
      } else {
        return null;
      }
    }
  }

  /// Get the [TgTgCredentials] from the `JSON` file in which they are stored.
  Future<TgTgCredentials?> getCredentialsFromAuth() async {
    if (tgTgSettings.credentials != null) {
      return tgTgSettings.credentials;
    } else {
      final file = File("${directory.path}/$_filename");
      if (await file.exists()) {
        final json = jsonDecode(await file.readAsString());
        return TgTgCredentials.fromJson(json as Map<String, dynamic>);
      } else {
        return null;
      }
    }
  }

  /// Checks if the auth file exists.
  Future<bool> get isAuthFilePresent async =>
      File("${directory.path}/$_filename").exists();
}
