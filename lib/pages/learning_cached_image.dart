import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class LearningCachedImage extends StatefulWidget {
  const LearningCachedImage({super.key});

  @override
  State<LearningCachedImage> createState() => _LearningCachedImageState();
}

class _LearningCachedImageState extends State<LearningCachedImage> {
  void clearCache() {
    setState(() {
      imageCache.clear();
      imageCache.clearLiveImages();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                "https://images.unsplash.com/photo-1567620487012-6390ee72f66e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE4fHx8ZW58MHx8fHx8&w=1000&q=80",
                width: MediaQuery.sizeOf(context).width,
                fit: BoxFit.fill,
              ),
            ),
            MaterialButton(
              height: 60,
              minWidth: MediaQuery.sizeOf(context).width,
              onPressed: () => clearCache(),
              child: const Text("Retry!"),
            ),
            Expanded(
              child: CachedNetworkImage(
                key: UniqueKey(),
                fit: BoxFit.fill,
                width: MediaQuery.sizeOf(context).width,
                fadeInDuration: const Duration(seconds: 1),
                fadeInCurve: Curves.linear,
                imageUrl:
                    "https://images.unsplash.com/photo-1567620487012-6390ee72f66e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE4fHx8ZW58MHx8fHx8&w=1000&q=80",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
