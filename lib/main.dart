import 'package:brainy_tasks/constants/AppConstants.dart';
import 'package:brainy_tasks/constants/RoutePaths.dart';
import 'package:brainy_tasks/features/about/AboutViewModel.dart';
import 'package:brainy_tasks/features/common/ConnectivityService.dart';
import 'package:brainy_tasks/features/home/HomeViewModel.dart';
import 'package:brainy_tasks/features/navigation/NavigationService.dart';
import 'package:brainy_tasks/locator.dart';
import 'package:brainy_tasks/router.dart';
import 'package:brainy_tasks/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeViewModel>(
          builder: (context) => HomeViewModel(),
        ),
        ChangeNotifierProvider(
          builder: (context) => AboutViewModel(),
        ),
        StreamProvider<ConnectivityStatus>(
          builder: (context) =>
              ConnectivityService().connectionStatusController.stream,
        )
      ],
      child: MaterialApp(
        title: AppConstants.app_name,
        theme: appTheme,
        initialRoute: RoutePaths.Home,
        onGenerateRoute: Router.generateRoute,
        navigatorKey: locator<NavigationService>().navigatorKey,
      ),
    );
  }
}
