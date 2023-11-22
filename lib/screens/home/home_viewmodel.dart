import 'package:deeplink/app/app.locator.dart';
import 'package:deeplink/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends ReactiveViewModel{
  final _navigationService = locator<NavigationService>();

  navigateToLogin(){
    _navigationService.replaceWith(Routes.login);
  }
}