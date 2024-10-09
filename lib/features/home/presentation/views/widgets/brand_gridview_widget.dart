import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:store/features/home/data/models/brand_model.dart';
import 'package:store/features/home/presentation/views/widgets/brand_widget.dart';

class BrandGridviewWidget extends StatefulWidget {
  const BrandGridviewWidget({super.key});

  @override
  State<BrandGridviewWidget> createState() => _BrandGridviewWidgetState();
}

class _BrandGridviewWidgetState extends State<BrandGridviewWidget> {
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: flag ? getMoreBrands().length : getLessBrands().length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 16,
        childAspectRatio: 3 / 4,
      ),
      itemBuilder: (BuildContext context, int index) {
        return BrandWidget(
          brandModel: flag ? getMoreBrands()[index] : getLessBrands()[index],
        );
      },
    );
  }

  List<BrandModel> getLessBrands() {
    return [
      ...BrandsData().brandsBaseList,
      BrandModel(
        name: BrandsData.more,
        logo: BrandsData.moreLogo,
        onTap: () {
          setState(() {
            flag = true;
          });
        },
      ),
    ];
  }

  List<BrandModel> getMoreBrands() {
    return [
      ...BrandsData().brandsBaseList,
      ...BrandsData().brandSubList,
      BrandModel(
        name: BrandsData.less,
        logo: BrandsData.lessLogo,
        onTap: () {
          setState(() {
            flag = false;
          });
        },
      ),
    ];
  }
}
