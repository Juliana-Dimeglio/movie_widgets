import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_widgets/movie_widgets.dart';

void main() {
  testWidgets("Testing if the title of the movie is correctly created",
      (WidgetTester tester) async {
    final originalTitle = MaterialApp(
      home: OriginalTitle(
        originalTitle: "Title test",
      ),
    );
    await tester.pumpWidget(
      Builder(builder: (BuildContext context) {
        return originalTitle;
      }),
    );
    expect(find.text("Title test"), findsOneWidget);
  });
}
