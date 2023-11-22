import 'dart:developer';
import 'package:deeplink/app/app.router.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

class InternetServices with ListenableServiceMixin {
  final _routerService = locator<NavigationService>();

  InternetServices() {
    InternetConnection().onStatusChange.listen((status) {
      switch (status) {
        case InternetStatus.connected:
          log('Data connection is available.');
          // _routerService.replaceWith(const SplashScreenRoute());
          // _routerService.replaceWith(Routes.tNC);
          break;
        case InternetStatus.disconnected:
          log('You are disconnected from the internet.');
          _routerService.replaceWith(Routes.noInternet);
          break;
      }
    });
  }
}
