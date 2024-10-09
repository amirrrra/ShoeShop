import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:store/core/utils/constants.dart';
import 'package:store/core/utils/routes.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const ShoeShop());
}

class ShoeShop extends StatelessWidget {
  const ShoeShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Routes().routes,
      // home: const HomeView(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontFamily: Constants.kUrwBold,
          ),
        ),
      ),
    );
  }
}
