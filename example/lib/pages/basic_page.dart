import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final Widget bodyWidget;

  const BasicPage({
    Key? key,
    required this.bodyWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: bodyWidget,
    );
  }
}
