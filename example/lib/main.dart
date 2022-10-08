// ignore_for_file: avoid_print

import 'package:tgtg_client/tgtg_client.dart';

Future<void> main() async {
  final settings = await TgTgSettings.instance(
    email: 'f.coppola1998@gmail.com',
  );

  final client = TgTgClient(settings: settings);

  print(client.settings.credentials.toString());

  await client.login();

  print(client.settings.credentials.toString());
}
