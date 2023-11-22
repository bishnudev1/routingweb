import 'package:deeplink/screens/login/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => LoginViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Login'),
            ),
            body: const Placeholder(),
          );
        });
  }
}
