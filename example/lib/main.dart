import 'package:example/pages/basic_page.dart';
import 'package:example/src/home_page.dart';
import 'package:example/utils/route_constants.dart';
import 'package:example/utils/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:movie_widgets/movie_widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: RouteConstants.homeRoute,
      routes: <String, WidgetBuilder>{
        RouteConstants.homeRoute: (context) => HomePage(),
        RouteConstants.originalTitleRoute: (context) => BasicPage(
              bodyWidget: OriginalTitle(
                originalTitle: StringConstants.title,
              ),
            ),
        RouteConstants.movieInformationRoute: (context) => BasicPage(
              bodyWidget: MoviesInformation(
                voteAverage: StringConstants.votes,
                originalLanguage: StringConstants.language,
              ),
            ),
        RouteConstants.overviewRoute: (context) => BasicPage(
              bodyWidget: Overview(
                overview: StringConstants.overview,
              ),
            ),
        RouteConstants.movieImageRoute: (context) => BasicPage(
              bodyWidget: MovieImage(
                imageUrl: StringConstants.imageUrl,
              ),
            ),
      },
    );
  }
}
