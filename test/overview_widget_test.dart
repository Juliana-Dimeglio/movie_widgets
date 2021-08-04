import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_widgets/movie_widgets.dart';

void main() {
  testWidgets("Testing if the overview of the movie is correctly created",
      (WidgetTester tester) async {
    final overview = MaterialApp(
      home: Overview(
        overview: "Overview test",
      ),
    );
    await tester.pumpWidget(
      Builder(builder: (BuildContext context) {
        return overview;
      }),
    );
    expect(find.text("Overview test"), findsOneWidget);
  });
}
