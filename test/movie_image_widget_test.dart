import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_widgets/movie_widgets.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  testWidgets("Testing if the image of the movie is correctly created",
      (WidgetTester tester) async {
    final movieImage = MaterialApp(
      home: MovieImage(
        imageUrl: "image test",
      ),
    );
    await mockNetworkImagesFor(
      () => tester.pumpWidget(movieImage),
    );
    expect(find.byType(MovieImage), findsOneWidget);
  });
}
