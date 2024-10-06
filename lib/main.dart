import 'package:flutter/material.dart';
import 'package:store/core/utils/constants.dart';
import 'package:store/core/utils/routes.dart';

void main() {
  runApp(const ShoeShop());
}

class ShoeShop extends StatelessWidget {
  const ShoeShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Routes().routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontFamily: Constants().sans,
          ),
        ),
      ),
    );
  }
}
