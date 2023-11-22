import 'package:deeplink/screens/tnc/tnc_screen.dart';
import 'package:deeplink/services/internet_services.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import '../screens/home/home_screen.dart';
import '../screens/login/login_screen.dart';
import '../screens/splash/splash_screen.dart';
import '../screens/nointernet_screen.dart';

@StackedApp(routes: [
  MaterialRoute(page: Splash,),
  MaterialRoute(page: Home),
  MaterialRoute(page: Login),
  MaterialRoute(page: TNC),
  MaterialRoute(page: NoInternet),
], dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: InternetServices),
])
class AppSetup {}
