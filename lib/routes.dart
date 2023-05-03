import 'package:flutter/material.dart';
import 'package:flutter_application_1/fourthscreen.dart';
import 'package:flutter_application_1/limascreen.dart';

class routesgenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final okehe = settings.arguments;

    switch (settings.name) {
      case '/fourth':
        return MaterialPageRoute(builder: (_) => fourthscreen());
      case '/fifth':
        if (okehe is String) {
          return MaterialPageRoute(builder: (_) =>limascreen(data: okehe));
        }
        return _errorRoutes();
      default:
        return _errorRoutes();
    }
  }

  static Route<dynamic> _errorRoutes() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text('error')),
        body: Center(child: Text("Error Page")),
      );
    });
  }
}
