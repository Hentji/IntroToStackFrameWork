import 'package:my_first_app/services/users_service.dart';
import 'package:stacked/stacked.dart';
import 'package:my_first_app/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

class UsersViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _usersService = locator<UsersService>();

  List<String> _users = [];

  List<String> get users => _users;

  navigateBack() {
    _navigationService.back();
  }

  getUsersFromService() async {
    _users = await _usersService.getUsers();
    rebuildUi();
  }

  formatUsers() {
    return users.join('\n');
  }
}
