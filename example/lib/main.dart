import 'package:tgtg_client/tgtg_client.dart';

void main() {
  const settings = TgTgSettings(
    email: 'f.coppola1998@gmail.com',
  );

  final tgtgClient = TgTgClient(
    settings: settings,
  );

  print(tgtgClient);
}
