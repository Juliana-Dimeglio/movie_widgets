import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_widgets/movie_widgets.dart';

void main() {
  testWidgets("Testing if the information of the movie is correctly created",
      (WidgetTester tester) async {
    final movieInformation = MaterialApp(
      home: MoviesInformation(
        voteAverage: "vote test",
        originalLanguage: "language test",
      ),
    );
    await tester.pumpWidget(
      Builder(builder: (BuildContext context) {
        return movieInformation;
      }),
    );
    expect(find.text("vote test"), findsOneWidget);
    expect(find.text("language test"), findsOneWidget);
  });
}
