// ignore_for_file: avoid_print

import 'package:tgtg_client/tgtg_client.dart';

Future<void> main() async {
  final settings = await TgTgSettings.instance();

  print(settings.userAgent);
}
