import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        // bt7afz 3la el responsive
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          // placeholder: (context, url) =>
          //     const Center(child: CircularProgressIndicator()),
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => const Icon(
            Icons.error,
            size: 32,
          ),
        ),
      ),
    );
  }
}