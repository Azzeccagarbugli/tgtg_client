// ignore_for_file: avoid_print

import "package:tgtg_client/tgtg_client.dart";

Future<void> main() async {
  // Create a new settings instance to pass to the client.
  final settings = TgTgSettings(
    email: "batman@waynenterprises.com",
  );

  // Create a new client instance.
  final client = TgTgClient(
    settings: settings,
    enableLogging: true,
  );

  // Login using the email previously provided.
  await client.login();

  // Get the list of all the items.
  // Note that by default it will only return the favorites.
  final allItems = await client.items.getAll(
    favoritesOnly: false,
    latitude: 51.44,
    longitude: 5.46,
    radius: 10,
  );

  // Printing all the items.
  print(allItems.toString());

  // Trying to fecth an item by its ID.
  try {
    final itemById = await client.items.getById(
      id: "42069",
    );
    print(itemById.toString());
  } catch (e) {
    print(e.toString());
  }

  // Setting an item as favorite.
  final setFavoriteItem = await client.items.setFavorite(
    id: "42069",
    isFavorite: true,
  );

  // Printing the result of the setting.
  // `true` if the item has been set as
  // favorite, `false` otherwise.
  print(setFavoriteItem.toString());

  // Getting the list of all the active orders.
  final activeOrders = await client.orders.getActive();

  // Printing the list of all the active orders.
  print(activeOrders.toString());

  // Getting the list of all the past orders.
  final inactiveOrders = await client.orders.getInactive();

  // Printing the list of all the past orders.
  print(inactiveOrders.toString());
}
