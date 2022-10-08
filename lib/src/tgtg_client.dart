import 'package:http/http.dart' as http;
import 'package:tgtg_client/src/tgtg_settings.dart';

/// The base url of the Too Good Too Go API.
const _baseUrl = "https://apptoogoodtogo.com/api/";

/// A client for accessing the **Too Good Too Go** API.
///
/// Http calls are made through the [http](https://pub.dev/packages/http)
/// package, which provides a platform independent client, making the
/// [TgTgClient] platform independent as well.
class TgTgClient {
  /// Creates a new instance of the [TgTgClient].
  ///
  /// [settings] must not be `null`.
  ///
  /// If no [httpClient] is provided, one is created.
  TgTgClient({
    required this.settings,
    http.Client? httpClient,
  }) : _http = httpClient ?? http.Client();

  /// The URI for the base url of the Too Good Too Go API.
  final Uri baseUrl = Uri.parse(_baseUrl);

  /// The [TgTgSettings] used by this client.
  final TgTgSettings settings;

  final http.Client _http;
  http.Client get httpClient => _http;

  var _closed = false;
  bool get isClosed => _closed;

  /// Closes this client and frees allocated resources.
  ///
  /// Failure to close this a client might cause the dart process to hang.
  ///
  /// After this method has been called this instance must not be used any more.
  void close() {
    _closed = true;
    _http.close();
  }
}
