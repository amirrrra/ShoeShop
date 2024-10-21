import 'package:flutter/material.dart';
import 'package:store/core/utils/styles.dart';
import 'package:store/features/home/presentation/views/widgets/product_grid_widget.dart';
import 'package:store/features/search/presentation/views/widgets/search_field_widget.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SearchFieldWidget(
                autofocus: true,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Results for "nike"',
                style: Styles.style22,
              ),
            ),
            SizedBox(height: 12),
            Expanded(child: ProductGridWidget()),
          ],
        ),
      ),
    );
  }
}
