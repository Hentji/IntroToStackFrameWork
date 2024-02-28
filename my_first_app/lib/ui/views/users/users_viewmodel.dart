import 'package:my_first_app/models/user.dart';
import 'package:my_first_app/services/users_service.dart';
import 'package:stacked/stacked.dart';
import 'package:my_first_app/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

class UsersViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _usersService = locator<UsersService>();

  List<User> _users = [];

  List<User> get users => _users;

  navigateBack() {
    _navigationService.back();
  }

  getUsersFromService() async {
    _users = await _usersService.getUsers();
    rebuildUi();
  }

  getName(index) {
    return users[index].name;
  }

  getId(index) {
    return '${users[index].id}';
  }

  getEmail(index) {
    return users[index].email;
  }

  getAddress(index) {
    return users[index].address.suite +
        users[index].address.street +
        users[index].address.suite +
        users[index].address.city +
        users[index].address.zipcode;
  }

  getPhone(index) {
    return users[index].phone;
  }
}
