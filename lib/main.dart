import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:store/core/utils/constants.dart';
import 'package:store/core/utils/routes.dart';
import 'package:store/features/home/data/repos/home_repo_impl.dart';
import 'package:store/features/home/presentation/view%20models/cubits/product_cubit.dart';
import 'package:store/features/search/presentation/views/search_view.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const ShoeShop());
}

class ShoeShop extends StatelessWidget {
  const ShoeShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductCubit(HomeRepoImpl()),
        )
      ],
      child: MaterialApp(
        // routerConfig: Routes().routes,
        home: const SearchView(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
              fontFamily: Constants.kUrwBold,
            ),
          ),
        ),
      ),
    );
  }
}
