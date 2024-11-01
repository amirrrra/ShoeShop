import 'package:flutter/material.dart';
import 'package:store/features/home/presentation/views/widgets/offers_listview_widget.dart';
import 'package:store/features/home/presentation/views/widgets/sub_appbar_widget.dart';

class OffersView extends StatelessWidget {
  const OffersView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics:BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 12),
                  SubAppbarWidget(title: 'Special Offers'),
                  SizedBox(height: 12),
                ],
              ),
            ),
            SliverFillRemaining(
              child: OffersListViewWidget(),
            )
          ],
        ),
      ),
    );
  }
}
