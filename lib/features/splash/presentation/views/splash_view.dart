import 'package:flutter/material.dart';
import 'package:store/features/splash/presentation/views/widgets/logo_widget.dart';
import 'package:store/features/splash/presentation/views/widgets/title_widget.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: screenHeight / 2.5),
          const TitleWidget(),
          const Flexible(child: LogoWidget()),
        ],
      ),
    );
  }
}
