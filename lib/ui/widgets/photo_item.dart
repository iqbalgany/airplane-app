import 'package:flutter/material.dart';
import 'package:airpane/shared/theme.dart';

class PhotoItem extends StatelessWidget {
  final String imageUrl;
  const PhotoItem({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 16,
      ),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16,
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            imageUrl,
          ),
        ),
      ),
    );
  }
}
