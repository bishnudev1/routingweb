import 'package:deeplink/screens/tnc/tnc_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TNC extends StatelessWidget {
  const TNC({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(viewModelBuilder: () => TNCViewModel(), builder: (context, model, child) {
      return Scaffold(
      body: Center(
        child: Text('Terms and Conditions'),
      )
    );
    });
  }
}