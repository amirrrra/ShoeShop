import 'package:flutter/material.dart';
import 'package:store/features/home/presentation/views/widgets/home_appbar_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 16,),
              HomeAppBarWidget()
            ],
          ),
        ),
      ),
    );
  }
}

