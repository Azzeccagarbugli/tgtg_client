# TGTG Client

> **Warning**
> This is a work in progress. It is probably not ready for production use and above all it's an **unofficial project**.

[**Too Good To Go**](https://toogoodtogo.com/en-us) is a service that connects customers to restaurants and stores that have surplus unsold food. This is an unofficial client to access their [API](https://apptoogoodtogo.com/swagger-ui.html).

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

Since the `User Agent` used in all the requests will contain the last version number of the app fetched from the [Play Store](https://play.google.com/store/apps/details?id=com.app.tgtg&hl=en&gl=US), you should use the `TgTgSettings.instance` class to create a valid session.

```dart
// Create a TgTgSettings from a given email
final settings = await TgTgSettings.instance(
    email: "batman@waynenterprises.com",
);
```

```dart
// Credentials from a previous session for instance
final credentials = TgTgCredentials(
    accessToken: "your_access_token",
    refreshToken: "your_refresh_token",
    userId: "your_user_id",
);

// Create a TgTgSettings from a preobtained credentials
final settings = await TgTgSettings.instance(
    credentials: credentials,
);
```

Once you have a valid `TgTgSettings` instance, you can create a `TgTgClient` instance and start to use the client.

```dart
final client = TgTgClient(settings);
```

The first thing that you need to do after creating the client is to **log in**. This will allow you to get a valid `TgTgCredentials` instance _(if you didn't create one on your own)_ that will be used as authentication method in all the requests.

```dart
await client.login();
```

After that you use the `login` method you will receive a mail from **Too Good To Go** that you need to confirm to start using the client.

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

Or you could just fetch a single `item` by its own `ID` by using the `getById` method.

```dart
final itemById = await client.items.getById(
    id: "42069",
);
```

# Example

The provided [example](https://github.com/Azzeccagarbugli/tgtg_client/blob/main/example/lib/main.dart) is a simple CLI app that fetches some `items` and `orders`.
