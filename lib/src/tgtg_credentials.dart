/// Credentials for accessing the **Too Good Too Go** API as a registered user.
///
/// You need to download the [app](https://toogoodtogo.com/en-us/consumer)
/// in order to create an account and get the credentials.
class TgTgCredentials {
  /// Creates [TgTgCredentials] from the given arguments.
  TgTgCredentials({
    required this.accessToken,
    required this.refreshToken,
    required this.userId,
  });

  /// Deserializes [TgTgCredentials] from [json].
  factory TgTgCredentials.fromJson(Map<String, dynamic> json) {
    return TgTgCredentials(
      accessToken: json["access_token"] as String?,
      refreshToken: json["refresh_token"] as String?,
      userId: json["user_id"] as String?,
    );
  }

  /// The access token of the app these [TgTgCredentials] belong to.
  String? accessToken;

  /// The refresh token of the app these [TgTgCredentials] belong to.
  String? refreshToken;

  /// The user ID of the app these [TgTgCredentials] belong to.
  String? userId;

  /// Check if the user is already logged in.
  bool get isAlreadyLogged =>
      accessToken!.isNotEmpty && refreshToken!.isNotEmpty && userId!.isNotEmpty;

  /// Creates a copy of this instance, replacing non `null` fields.
  TgTgCredentials copyWith({
    String? accessToken,
    String? refreshToken,
    String? userId,
  }) {
    return TgTgCredentials(
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      userId: userId ?? this.userId,
    );
  }

  /// Serializes this instance to json.
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "access_token": accessToken,
      "refresh_token": refreshToken,
      "user_id": userId,
    };
  }

  @override
  String toString() =>
      "Credentials{accessToken: $accessToken, refreshToken: $refreshToken, userId: $userId}";
}
