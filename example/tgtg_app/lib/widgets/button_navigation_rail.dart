import "package:figma_squircle/figma_squircle.dart";
import "package:flutter/material.dart";

class ButtonNavigationRail extends StatelessWidget {
  const ButtonNavigationRail({
    Key? key,
    required this.iconData,
    required this.onTap,
    required this.color,
  }) : super(key: key);

  final IconData iconData;
  final VoidCallback onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          margin: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: color,
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: 16,
                cornerSmoothing: 1,
              ),
            ),
          ),
          child: Center(
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
