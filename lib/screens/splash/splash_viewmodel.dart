import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';
import '../../app/app.router.dart';

class SplashViewModel extends ReactiveViewModel {
  final _navigationService = locator<NavigationService>();

  final isAuth = false;

  init(BuildContext context) {
    log("Into Splash Screen init method");

    final currentRoute = ModalRoute.of(context)!.settings.name;

    Future.delayed(const Duration(seconds: 3), () {
      if (isAuth) {
        if(currentRoute != '/Home'){
          _navigationService.replaceWith(Routes.home);
        }
      } else {
        if(currentRoute != '/Login'){
          _navigationService.replaceWith(Routes.login);
        }
      }
    });
  }
}
