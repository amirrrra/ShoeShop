import 'package:flutter/material.dart';
import 'package:store/features/home/presentation/views/widgets/offers_listview_widget.dart';
import 'package:store/features/home/presentation/views/widgets/sub_appbar_widget.dart';

class OffersView extends StatelessWidget {
  // final ProductModel productModel;
  const OffersView({
    super.key,
    // required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 12),
            SubAppbarWidget(title: 'Special Offers'),
            SizedBox(height: 12),
            Expanded(child: OffersListViewWidget()),
          ],
        ),
      ),
    );
  }
}
