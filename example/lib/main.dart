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
    latitude: 51.44,
    longitude: 5.46,
    radius: 10,
  );

  log(allItems.toString());

  try {
    final itemById = await client.items.getById(
      id: "741575eqe",
    );
    log(itemById.toString());
  } catch (e) {
    log(e.toString());
  }

  final inactiveOrders = await client.orders.getActive();

  log(inactiveOrders.toString());

  final setFavoriteItem = await client.items.setFavorite(
    id: "884134",
    isFavorite: true,
  );

  log(setFavoriteItem.toString());
}
