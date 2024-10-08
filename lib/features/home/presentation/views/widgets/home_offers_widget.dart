import 'package:flutter/material.dart';
import 'package:store/features/home/presentation/views/widgets/home_subtitle_widget.dart';
import 'package:store/features/home/presentation/views/widgets/offer_widget.dart';

class HomeOffersWidget extends StatelessWidget {
  const HomeOffersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeSubTitleWidget(baseTitle: 'Special Offers'),
        SizedBox(height: 16),
        OfferWidget(),
      ],
    );
  }
}
