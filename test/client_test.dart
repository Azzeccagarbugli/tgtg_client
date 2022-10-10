import "package:test/test.dart";
import "package:tgtg_client/tgtg_client.dart";

void main() {
  test("Executing requests without any credentials", () async {
    expect(() async {
      final client = TgTgClient(settings: TgTgSettings.custom());

      await client.login();
    }, throwsException);
  });

  test("Executing requests without valid credentials", () async {
    expect(() async {
      final client = TgTgClient(
        settings: TgTgSettings.custom(
          credentials: TgTgCredentials(
            accessToken: "",
            refreshToken: "",
            userId: "",
          ),
        ),
      );

      await client.login();
    }, throwsException);
  });

  test("Executing requests after disposed the client", () async {
    expect(() async {
      final client = TgTgClient(
        settings: TgTgSettings.custom(
          credentials: TgTgCredentials(
            accessToken: "",
            refreshToken: "",
            userId: "",
          ),
        ),
      );

      client.dispose();

      await client.items.getAll();
    }, throwsException);
  });
}
