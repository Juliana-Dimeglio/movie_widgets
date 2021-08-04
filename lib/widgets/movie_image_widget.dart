import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_widgets/utils/string_constants_widget.dart';

class MovieImage extends StatelessWidget {
  final String imageUrl;
  final BoxFit imageFit;

  const MovieImage({
    Key? key,
    required this.imageUrl,
    this.imageFit = BoxFit.contain,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      placeholder: (context, url) => Image.asset(
        StringConstantsWidget.defaultImage,
        fit: imageFit,
      ),
      imageUrl: imageUrl,
      errorWidget: (context, url, error) => Image.asset(
        StringConstantsWidget.errorImage,
        fit: imageFit,
      ),
    );
  }
}
