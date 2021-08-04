import 'package:example/src/route_element.dart';
import 'package:example/utils/numeric_constants.dart';
import 'package:example/utils/route_constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<RouteElement> _routeList = [];

  void _generateRoutes() {
    _routeList.add(
      RouteElement(
        route: RouteConstants.movieInformationRoute,
        widgetName: "Movie information",
      ),
    );
    _routeList.add(
      RouteElement(
        route: RouteConstants.movieImageRoute,
        widgetName: "Movie Image",
      ),
    );
    _routeList.add(
      RouteElement(
        route: RouteConstants.originalTitleRoute,
        widgetName: "Original Title",
      ),
    );
    _routeList.add(
      RouteElement(
        route: RouteConstants.overviewRoute,
        widgetName: "Overview",
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _generateRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: _routeList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(
              NumericConstants.paddingButton,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  _routeList[index].route,
                );
              },
              child: Text(
                _routeList[index].widgetName,
              ),
            ),
          );
        },
      ),
    );
  }
}
