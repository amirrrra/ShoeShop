import 'package:flutter/material.dart';
import 'package:store/core/utils/constants.dart';
import 'package:store/features/home/presentation/views/home_view.dart';

void main() {
  runApp(const ShoeShop());
}

class ShoeShop extends StatelessWidget {
  const ShoeShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routerConfig: Routes().routes,
      home: const HomeView(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontFamily: Constants().kUrwMed,
          ),
        ),
      ),
    );
  }
}
