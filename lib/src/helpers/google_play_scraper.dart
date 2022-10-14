// ignore_for_file: avoid_dynamic_calls
import "dart:convert";
import "package:http/http.dart" as http;

/// RegEx used to extract the version number from the PlayStore link.
final regexScript = RegExp(
  r"AF_initDataCallback\({key:\s*'ds:5'.*?data:([\s\S]*?), sideChannel:.+<\/script",
);

/// The url of the PlayStore page of the app.
const playStoreUrl =
    "https://play.google.com/store/apps/details?id=com.app.tgtg&hl=en&gl=US";

/// A scraper for accessing the last number version of the **Too Good To Go** app.
///
/// The following code reflect the Python implementation
/// found on [GitHub](https://github.com/ahivert/tgtg-python/blob/master/tgtg/google_play_scraper.py).
class GooglePlayScraper {
  /// Creates a new instance of the [GooglePlayScraper].
  GooglePlayScraper({
    String? url,
  }) : _url = url ?? playStoreUrl;

  /// The url of the Google Play Store page of the **Too Good To Go** app.
  final String _url;

  /// Returns the last version number of the **Too Good To Go** app.
  Future<String?> getLastApkVersion() async {
    final response = await http.get(Uri.parse(_url));
    final match = regexScript.firstMatch(response.body);

    if (match != null) {
      final data = json.decode(match.group(1)!);
      final version = data[1][2][140][0][0][0] as String;
      return version;
    }

    return null;
  }
}
