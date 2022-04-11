import 'package:flutter/material.dart';
import 'package:ibilling/router/router.dart';

void main(List<String> args) {
  runApp(
    IBilling(),
  );
}

class IBilling extends StatelessWidget {
  IBilling({Key? key}) : super(key: key);
  final route = RouteGenerator();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: "/",
      onGenerateRoute: route.generateRoute,
    );
  }
}
