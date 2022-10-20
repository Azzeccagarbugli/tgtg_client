import "package:figma_squircle/figma_squircle.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:tgtg_app/helpers/trasparent_image.dart";
import "package:tgtg_client/tgtg_client.dart";

class ShopCard extends StatelessWidget {
  const ShopCard({
    Key? key,
    required this.item,
    required this.onTapFavorite,
  }) : super(key: key);

  final Items item;
  final VoidCallback onTapFavorite;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: AspectRatio(
        aspectRatio: 18 / 14,
        child: Card(
          color: Colors.teal.shade100.withOpacity(.2),
          margin: EdgeInsets.zero,
          shape: SmoothRectangleBorder(
            borderRadius: SmoothBorderRadius(
              cornerRadius: 14,
              cornerSmoothing: 1,
            ),
          ),
          elevation: 0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: ClipSmoothRect(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    radius: SmoothBorderRadius(
                      cornerRadius: 10,
                      cornerSmoothing: 1,
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: FadeInImage.memoryNetwork(
                            placeholder: kTransparentImage,
                            image: item.store?.coverPicture?.currentUrl ?? "",
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned.fill(
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  Colors.transparent,
                                  Colors.black,
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 8,
                            ),
                            leading: ClipOval(
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: FadeInImage.memoryNetwork(
                                  placeholder: kTransparentImage,
                                  image:
                                      item.store?.logoPicture?.currentUrl ?? "",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            title: Text(
                              item.store?.storeName ?? "",
                              style: GoogleFonts.quicksand(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: Text(
                              item.store?.storeLocation?.address?.addressLine ??
                                  "",
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon: Icon(
                                item.favorite!
                                    ? Icons.favorite_rounded
                                    : Icons.favorite_border_rounded,
                              ),
                              onPressed: onTapFavorite,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        item.product?.name == null ||
                                item.product!.name!.isEmpty
                            ? "No name provided"
                            : item.product!.name!,
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade800,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        item.product?.description == null ||
                                item.product!.description!.isEmpty
                            ? "No description provided"
                            : item.product!.description!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Chip(
                              backgroundColor: Colors.orange,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 3,
                                vertical: 5,
                              ),
                              avatar: const DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.hotel_class_rounded,
                                    color: Colors.orange,
                                    size: 12,
                                  ),
                                ),
                              ),
                              label: Text(
                                item.product?.averageOverallRating
                                        ?.averageOverallRating!
                                        .toStringAsFixed(1) ??
                                    "?",
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Chip(
                              backgroundColor: Colors.blue,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 3,
                                vertical: 5,
                              ),
                              avatar: const DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.social_distance_outlined,
                                    color: Colors.blue,
                                    size: 12,
                                  ),
                                ),
                              ),
                              label: Text(
                                "${(item.store!.distance! * 1000).toStringAsFixed(0)}m",
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Chip(
                              backgroundColor: Colors.teal.shade800,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 3,
                                vertical: 5,
                              ),
                              avatar: DecoratedBox(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.euro_rounded,
                                    color: Colors.teal.shade800,
                                    size: 12,
                                  ),
                                ),
                              ),
                              label: Text(
                                item.product?.finalPriceWithCurrency ?? "",
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
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
            ],
          ),
        ),
      ),
    );
  }
}
