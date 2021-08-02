import 'package:flutter/material.dart';
import 'package:movie_widgets/utils/numeric_constants_widget.dart';

class MoviesInformation extends StatelessWidget {
  final String voteAverage;
  final String originalLanguage;

  const MoviesInformation({
    Key? key,
    required this.voteAverage,
    required this.originalLanguage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          voteAverage,
          style: TextStyle(
            fontSize: NumericConstantsWidget.fontSizeInfoDetail,
            color: Colors.pink.shade100,
          ),
        ),
        Text(
          originalLanguage,
          style: TextStyle(
            color: Colors.pink.shade100,
            fontSize: NumericConstantsWidget.fontSizeInfoDetail,
          ),
        ),
      ],
    );
  }
}
