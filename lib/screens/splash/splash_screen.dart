import 'dart:developer';

import 'package:deeplink/screens/splash/splash_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SplashViewModel(),
        onViewModelReady: (viewModel) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            viewModel.init(context);
            log("Into Splash Screen init method again");
          });
        },
        builder: (context, model, child) {
          return Scaffold(body: Center(child: CircularProgressIndicator()));
        });
  }
}
