import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:my_first_app/ui/common/ui_helpers.dart';

import 'users_viewmodel.dart';

class UsersView extends StackedView<UsersViewModel> {
  const UsersView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    UsersViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center, // Center vertically
              children: [
                Column(
                  children: [
                    const Text(
                      'Users View!',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    verticalSpaceMedium,
                    MaterialButton(
                      color: Colors.black,
                      onPressed: () => viewModel.navigateBack(),
                      child: const Text(
                        'Home Page',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  UsersViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      UsersViewModel();
}
