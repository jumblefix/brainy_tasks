import 'package:brainy_tasks/constants/AppConstants.dart';
import 'package:brainy_tasks/constants/RoutePaths.dart';
import 'package:brainy_tasks/features/navigation/NavigationService.dart';
import 'package:brainy_tasks/locator.dart';
import 'package:brainy_tasks/router.dart';
import 'package:brainy_tasks/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  setupLocator();

  runApp(BrainyTasks());
}

class BrainyTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.app_name,
      theme: appTheme,
      initialRoute: RoutePaths.Home,
      onGenerateRoute: Router.generateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
