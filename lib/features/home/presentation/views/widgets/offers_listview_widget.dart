import 'package:flutter/material.dart';
import 'package:store/features/home/presentation/views/widgets/offer_widget.dart';

class OffersListViewWidget extends StatelessWidget {
  const OffersListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              OfferWidget(),
              SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
