import "dart:developer";

import "package:tgtg_client/tgtg_client.dart";

Future<void> main() async {
  final settings = await TgTgSettings.instance(
    email: "f.coppola1998@gmail.com",
  );

  final client = TgTgClient(settings: settings);

  log(client.settings.credentials.toString());

  await client.login();

  log(client.settings.credentials.toString());

  final allItems = await client.items.getAll(
    favoritesOnly: false,
    latitude: -48.0,
    longitude: 1.73,
    radius: 10,
  );

  log(allItems.toList().toString());

  final itemById = await client.items.getById(
    id: "5f9b5b9b-8b8f-4b9c-8c1c-8c1c8c1c8c1c",
  );

  log(itemById.toString());
}
