import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:tgtg_client/src/app_credentials.dart';

/// The settings for the [UnsplashClient].
@immutable
class TgTgSettings extends Equatable {
  /// Creates new [TgTgSettings].
  ///
  /// Either one of [credentials] or [email] fields must be provided.
  const TgTgSettings({
    this.credentials,
    this.email,
  }) : assert(
          credentials != null || email != null,
          'One of the parameters must be provided',
        );

  /// The credentials used by the [TgTgClient] to authenticate the user.
  final TgTgCredentials? credentials;

  /// The email used by the [TgTgClient] to authenticate the user.
  final String? email;

  @override
  String toString() {
    return 'TgTgSettings{credentials: $credentials}';
  }

  @override
  List<Object?> get props => [credentials, email];
}
