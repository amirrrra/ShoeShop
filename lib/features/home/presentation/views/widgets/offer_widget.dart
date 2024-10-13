import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/core/utils/styles.dart';
import 'package:store/features/home/data/models/product_model/product_model.dart';
import 'package:store/features/home/presentation/view%20models/cubits/product_cubit.dart';

class OfferWidget extends StatefulWidget {
  final ProductModel productModel;
  const OfferWidget({
    super.key,
    required this.productModel,
  });

  @override
  State<OfferWidget> createState() => _OfferWidgetState();
}

class _OfferWidgetState extends State<OfferWidget> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ProductCubit>(context).getProducts('nike');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var discount = widget.productModel.offer?.couponDiscountPercent ?? 'Off';
    var displayDiscount =
        discount.length >= 3 ? discount.substring(0, 3) : discount;
    return Container(
      padding: const EdgeInsets.only(left: 25, top: 25, bottom: 25),
      height: 136,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: ColorPalette.kBlueLogo,
        borderRadius: BorderRadius.all(Radius.circular(35)),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                displayDiscount,
                style: Styles.style36,
              ),
              Text(
                "Today's Special!",
                style: Styles.style20.copyWith(
                  color: ColorPalette.kWhite,
                ),
              ),
            ],
          ),
          const Spacer(flex: 2,),
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: Image.asset(
                widget.productModel.photo,
                width: 180,
                height: 180,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
