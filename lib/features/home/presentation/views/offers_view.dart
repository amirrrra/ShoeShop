import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store/core/utils/styles.dart';
import 'package:store/features/home/presentation/views/widgets/offers_listview_widget.dart';

class OffersView extends StatelessWidget {
  // final ProductModel productModel;
  const OffersView({
    super.key,
    // required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => GoRouter.of(context).pop(),
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'Special Offers',
                    style: Styles.style24.copyWith(fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Expanded(child: OffersListViewWidget()),
          ],
        ),
      ),
    );
  }
}
