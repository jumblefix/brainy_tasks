import 'package:brainy_tasks/features/BaseViewModel.dart';
import 'package:brainy_tasks/features/navigation/NavigationService.dart';
import 'package:brainy_tasks/locator.dart';

class AboutViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  Future goBack() async {
    setBusy(true);

    await Future.delayed(Duration(seconds: 1));

    _navigationService.goBack();

    setBusy(false);
  }
}
