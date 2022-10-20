import "dart:io";

import "package:figma_squircle/figma_squircle.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:tgtg_app/widgets/button_navigation_rail.dart";
import "package:tgtg_app/widgets/shop_card.dart";
import "package:tgtg_client/tgtg_client.dart";

class TooGoodToGo extends StatefulWidget {
  const TooGoodToGo({
    super.key,
    required this.title,
    required this.directory,
  });

  final Directory directory;
  final String title;

  @override
  State<TooGoodToGo> createState() => _TooGoodToGoState();
}

class _TooGoodToGoState extends State<TooGoodToGo> {
  late TgTgClient client;

  late int selectedIndex;

  @override
  void initState() {
    super.initState();

    selectedIndex = 0;

    final tgTgSettings = TgTgSettings(
      email: "your-email",
      directory: widget.directory,
    );

    client = TgTgClient(
      settings: tgTgSettings,
      enableLogging: true,
    );
  }

  @override
  void dispose() {
    client.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Container(
              width: 80,
              color: Colors.teal.shade100.withOpacity(.1),
              child: Column(
                children: [
                  ButtonNavigationRail(
                    iconData: Icons.store_mall_directory_rounded,
                    onTap: () {},
                    color: Colors.teal,
                  ),
                  ButtonNavigationRail(
                    iconData: Icons.shopping_cart_rounded,
                    onTap: () {},
                    color: Colors.teal.withOpacity(.3),
                  ),
                  ButtonNavigationRail(
                    iconData: Icons.settings_rounded,
                    onTap: () {},
                    color: Colors.teal.withOpacity(.3),
                  ),
                  const Spacer(),
                  ButtonNavigationRail(
                    iconData: Icons.person_rounded,
                    onTap: () {},
                    color: Colors.grey.shade700,
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                      child: SizedBox(
                        height: 250,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            WelcomeBackCard(),
                            SavingsCard(),
                            SupportCard(),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: SizedBox(
                        height: 320,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              minVerticalPadding: 0,
                              title: Text(
                                "Favorite shops",
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              subtitle: Text(
                                "The ones that brought you happiness",
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              trailing: Chip(
                                backgroundColor: Colors.teal,
                                label: Text(
                                  "See all".toUpperCase(),
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              dense: true,
                            ),
                            Expanded(
                              child: FutureBuilder(
                                future: client.items.getAll(
                                  latitude: 51.0,
                                  longitude: 5.0,
                                ),
                                builder: (context, snapshot) {
                                  Widget? widgetToShow;

                                  if (snapshot.hasData) {
                                    widgetToShow = ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      key: const ValueKey(0),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                      ),
                                      physics: const BouncingScrollPhysics(),
                                      itemCount: snapshot.data!.length,
                                      itemBuilder: (context, index) {
                                        final item = snapshot.data![index];
                                        return ShopCard(
                                          item: item,
                                          onTapFavorite: () async {
                                            await client.items.setFavorite(
                                              id: item.product!.productId!,
                                              isFavorite: !item.favorite!,
                                            );
                                            setState(() {});
                                          },
                                        );
                                      },
                                    );
                                  } else {
                                    widgetToShow =
                                        const CircularProgressIndicator(
                                      key: ValueKey(1),
                                    );
                                  }

                                  return AnimatedSwitcher(
                                    duration: const Duration(milliseconds: 500),
                                    child: widgetToShow,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: SizedBox(
                        height: 320,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              minVerticalPadding: 0,
                              title: Text(
                                "Popular shop near you",
                                style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              subtitle: Text(
                                "Go and discover them all",
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              trailing: Chip(
                                backgroundColor: Colors.teal,
                                label: Text(
                                  "See all".toUpperCase(),
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              dense: true,
                            ),
                            Expanded(
                              child: FutureBuilder(
                                future: client.items.getAll(
                                  favoritesOnly: false,
                                  latitude: 51.441642,
                                  longitude: 5.469722,
                                  radius: 20,
                                ),
                                builder: (context, snapshot) {
                                  Widget? widgetToShow;

                                  if (snapshot.hasData) {
                                    widgetToShow = ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      key: const ValueKey(0),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      physics: const BouncingScrollPhysics(),
                                      itemCount: snapshot
                                          .data!
                                          // .where((element) => element.itemsAvailable! > 0)
                                          .length,
                                      itemBuilder: (context, index) {
                                        final item = snapshot.data![index];

                                        return ShopCard(
                                          item: item,
                                          onTapFavorite: () async {
                                            await client.items.setFavorite(
                                              id: item.product!.productId!,
                                              isFavorite: !item.favorite!,
                                            );
                                            setState(() {});
                                          },
                                        );
                                      },
                                    );
                                  } else {
                                    widgetToShow =
                                        const CircularProgressIndicator(
                                      key: ValueKey(1),
                                    );
                                  }

                                  return AnimatedSwitcher(
                                    duration: const Duration(milliseconds: 500),
                                    child: widgetToShow,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SupportCard extends StatelessWidget {
  const SupportCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: ShapeDecoration(
          image: const DecorationImage(
            image: NetworkImage(
              "https://media.indebuurt.nl/leiden/2020/01/07124007/toogoodtogo_5383.jpg",
            ),
            fit: BoxFit.cover,
          ),
          color: Colors.teal,
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: 16,
              cornerSmoothing: 1,
            ),
          ),
        ),
        child: ClipSmoothRect(
          radius: SmoothBorderRadius(
            cornerRadius: 16,
            cornerSmoothing: 1,
          ),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.teal.withOpacity(.3),
                      Colors.teal.withOpacity(.6),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 16,
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Icon(
                            Icons.volunteer_activism_rounded,
                            size: 42,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned.fill(
                left: 16,
                bottom: 16,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Text(
                        "Support a local\nassociation!",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w700,
                          fontSize: 32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.chevron_right_rounded,
                      size: 72,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SavingsCard extends StatelessWidget {
  const SavingsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: ShapeDecoration(
          color: Colors.teal,
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: 16,
              cornerSmoothing: 1,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                decoration: ShapeDecoration(
                  color: Colors.teal.shade400,
                  shape: SmoothRectangleBorder(
                    borderRadius: SmoothBorderRadius(
                      cornerRadius: 14,
                      cornerSmoothing: 1,
                    ),
                  ),
                ),
                child: SizedBox.expand(
                  child: Center(
                    child: Text(
                      "You saved, so far\n28kg of CO2",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 26,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                decoration: ShapeDecoration(
                  color: Colors.teal.shade400,
                  shape: SmoothRectangleBorder(
                    borderRadius: SmoothBorderRadius(
                      cornerRadius: 14,
                      cornerSmoothing: 1,
                    ),
                  ),
                ),
                child: SizedBox.expand(
                  child: SizedBox.expand(
                    child: Center(
                      child: Text(
                        "23 Magic Boxes,\ngood job!",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 26,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomeBackCard extends StatelessWidget {
  const WelcomeBackCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: ShapeDecoration(
          color: Colors.teal,
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: 16,
              cornerSmoothing: 1,
            ),
          ),
        ),
        child: ClipSmoothRect(
          radius: SmoothBorderRadius(
            cornerRadius: 16,
            cornerSmoothing: 1,
          ),
          child: Stack(
            children: [
              Positioned(
                left: 16,
                top: 16,
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Icon(
                            Icons.waving_hand_rounded,
                            size: 42,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned.fill(
                left: 16,
                bottom: 16,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Text(
                        "Welcome back\nFrancesco",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w700,
                          fontSize: 32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
