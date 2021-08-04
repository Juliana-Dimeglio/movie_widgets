import 'package:flutter/material.dart';
import 'package:movie_widgets/utils/numeric_constants_widget.dart';
import 'package:movie_widgets/utils/string_constants_widget.dart';

class OriginalTitle extends StatelessWidget {
  final String originalTitle;

  const OriginalTitle({
    Key? key,
    required this.originalTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            NumericConstantsWidget.borderRadiusTitle,
          ),
        ),
        color: Colors.black,
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          NumericConstantsWidget.paddingTitleDetail,
        ),
        child: Text(
          originalTitle,
          style: TextStyle(
            fontSize: NumericConstantsWidget.fontSizeTitleDetail,
            fontFamily: StringConstantsWidget.fontFamilyTitleDetail,
          ),
        ),
      ),
    );
  }
}
