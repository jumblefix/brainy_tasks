import 'package:brainy_tasks/constants/RoutePaths.dart';
import 'package:brainy_tasks/features/BaseViewModel.dart';
import 'package:brainy_tasks/features/navigation/NavigationService.dart';
import 'package:brainy_tasks/locator.dart';

class HomeViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  Future goToAbout({bool ok = true}) async {
    setBusy(true);

    await Future.delayed(Duration(seconds: 1));

    if (!ok) {
      setErrorMessage('Error has occurred on home page');
    } else {
      _navigationService.navigateTo(RoutePaths.About);
    }
    setBusy(false);
  }

  Future goToContact({bool ok = true}) async {
    setBusy(true);

    Future.delayed(Duration(seconds: 1));
    if (!ok) {
      setErrorMessage('Error has occurred on home page');
    } else {
      _navigationService.navigateTo(RoutePaths.Contact);
    }
    setBusy(false);
  }
}
