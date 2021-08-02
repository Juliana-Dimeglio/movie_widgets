import 'package:flutter/material.dart';
import 'package:movie_widgets/utils/numeric_constants_widget.dart';

class Overview extends StatelessWidget {
  final String overview;

  const Overview({
    Key? key,
    required this.overview,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: NumericConstantsWidget.paddingOverviewVertical,
        horizontal: NumericConstantsWidget.paddingOverviewHorizontal,
      ),
      child: Text(
        overview,
        style: TextStyle(
          fontSize: NumericConstantsWidget.fontSizeOverview,
        ),
      ),
    );
  }
}
