import "dart:io";

import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:path_provider/path_provider.dart";
import "package:tgtg_app/pages/home_page.dart";

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();
  runApp(App(directory: dir));
}

class App extends StatelessWidget {
  const App({
    super.key,
    required this.directory,
  });

  final Directory directory;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Too Good To Go",
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.teal,
        textTheme: GoogleFonts.quicksandTextTheme(),
      ),
      themeMode: ThemeMode.light,
      home: TooGoodToGo(
        title: "Too Good To Go",
        directory: directory,
      ),
    );
  }
}
