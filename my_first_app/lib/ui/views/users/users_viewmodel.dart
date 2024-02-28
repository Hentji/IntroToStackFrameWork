import 'package:my_first_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:my_first_app/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

class UsersViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  navigateToHomeView() async {
    await _navigationService.navigateToHomeView();
  }
}
