import 'package:flutter/material.dart';
import 'package:ml_kit_examples/ui/splash/splash_view_model.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SplashViewModel(),
      onViewModelReady: (model) => model.init,
      builder: (context, viewmodel, child) => const Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Text(
            "ML Kit examples",
            style: TextStyle(fontSize: 24),
          )
        ]),
      )
    );
  }
}