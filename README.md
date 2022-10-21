![alt Banner of the tgtg_client project](https://raw.githubusercontent.com/Azzeccagarbugli/tgtg_client/main/assets/banner.png)

> **Warning**
> this is a work in progress. It is probably not ready for production use and above all it's an **unofficial project**.

[**Too Good To Go**](https://toogoodtogo.com/en-us) is a service that connects customers to restaurants and stores that have surplus unsold food. This is an unofficial client to access their [**API**](https://apptoogoodtogo.com/swagger-ui.html).

# Getting started

In order to use the client you need to have a valid account on the **Too Good To Go** app. Indeed, you can either log in with your already existing account or create a new one.

## Sign up

You can sign up for a new account by using the `signUp` method.

For this use case the `TgTgClient.empty` constructor will be used because we don't need any credentials to sign up.

```dart
// Instantiate the empty client
final client = TgTgClient.empty();

// Sign up
await client.signUp(
    email: "batman@waynenterprises.com",
    name: "John Wayne",
    countryId: "US",
    newsletterOptIn: false,
    pushNotificationOptIn: false,
    deviceType: "IOS",
);
```

After the sign-up you will receive an email with a link to confirm your account.

## Login

The login process is similar to the sign-up process. You can use the `login` method to log in to your account.

You can either provide your email _(that is linked to your account)_ or a previous session that you previously used.

```dart
// Create a TgTgSettings from a given email
final settings = TgTgSettings(
    email: "batman@waynenterprises.com",
);
```

```dart
// Credentials from a previous session for instance
final credentials = const TgTgCredentials(
    accessToken: "your_access_token",
    refreshToken: "your_refresh_token",
    userId: "your_user_id",
);

// Create a TgTgSettings from a preobtained credentials
final settings = TgTgSettings(
    credentials: credentials,
);
```

Once you have a valid `TgTgSettings` instance, you can create a `TgTgClient` instance and start to use the client.

```dart
final client = TgTgClient(settings: settings);
```

The first thing that you need to do after creating the client is to **log in**. This will allow you to get a valid `TgTgCredentials` instance _(if you didn't create one on your own)_ that will be used as authentication method in all the requests.

```dart
await client.login();
```

After that you have used the `login` method you will receive a mail from **Too Good To Go** that you need to confirm to start using the client.

### Persisting the session

The `TgTgSettings` class provides also a `directory` attribute that can select a system path where the session will be persisted. This is useful if you want to persist the session and use it later **without** having to log in again using the email.

```dart
import "dart:io";

final client = TgTgSettings(
    email: "batman@waynenterprises.com",
    directory: Directory("path/to/the/session"),
);
```

In a Flutter application, you can use the [**`getApplicationDocumentsDirectory`**](https://pub.dev/documentation/path_provider/latest/path_provider/getApplicationDocumentsDirectory.html) method from the [**`path_provider`**](https://pub.dev/packages/path_provider) package to get the path to the application documents directory.

> **Note**
> if you are building a Flutter Web application you should consider checking the status of the [following issue](https://github.com/flutter/flutter/issues/45296).

```dart
import "package:path_provider/path_provider.dart";

Future<void> buildSettings() async {
    final dir = await getApplicationDocumentsDirectory();
    final tgTgSettings = TgTgSettings(
        email: "batman@waynenterprises.com",
        directory: dir,
    );
}
```

## Items

The `getAll` method by default will return a list of all the favorite `items` that you previously saved.

```dart
final favoriteItems = await client.items.getAll();
```

You can easily personalize the default behavior by passing some custom parameters and fetch the `items`.

```dart
final customItems = await client.items.getAll(
    favoritesOnly: false,
    latitude: 51.00,
    longitude: 5.00,
    radius: 10,
);
```

Or you could just fetch a single `item` by its own `id` by using the `getById` method.

```dart
final itemById = await client.items.getById(
    id: "42069",
);
```

You can also set a favorite `item` by using the `setFavorite` method.

```dart
final setFavoriteItem = await client.items.setFavorite(
    id: "42069",
    isFavorite: true,
);
```

## Orders

The `getActive` method will return a list of all the active `orders` that you made.

```dart
final activeOrders = await client.items.getActive();
```

On the other hand, the `getInactive` method will return a list of all the past `orders` that you made so far.

```dart
final inactiveOrders = await client.items.getInactive();
```

## Debugging

For testing and debugging purposes, you can use the built-in `Logger` to more easily check the status of requests and responses.

By default, the `Logger` is disabled. You can enable it by setting the `enableLogging` property to `true`.

```dart
final client = TgTgClient(
    settings: settings,
    enableLogging: true,
);
```

# Documentation

The full documentation of the project is available [here](https://pub.dev/documentation/tgtg_client/latest/). All the methods are documented, and you can easily check the parameters that you can pass to them.

# Example

The first provided example is a simple desktop application written in [**Flutter**](https://flutter.dev/) that allows you to log in to your account and fetch all available items and the ones that you have saved as favorites.

![alt Banner of the tgtg_client project](https://raw.githubusercontent.com/Azzeccagarbugli/tgtg_client/main/assets/flutter_app.png)

You can run it by cloning the repository and setting it up in **VS Code** _(or in your favorite IDE)_ or running the following command:

> **Note**
> to update the email value that you want to use to log in to your account.

```bash
flutter run
```

The second provided [example](https://github.com/Azzeccagarbugli/tgtg_client/blob/main/example/lib/main.dart) is a simple CLI app that fetches some `items` and `orders`. You can easily run it by cloning the repository and running the following command.

```bash
dart example/lib/main.dart
```

# Limitations

Since this is an **unofficial** project, there are some limitations that you should be aware of:

- The client could be easily blocked by **Too Good To Go** if you make too many requests in a short period of time. This is because the client is not using any kind of rate limiting.

- At the moment, it is not possible to make a purchase using the current implementation.

- The project is still in development and, it is not ready for production use.
