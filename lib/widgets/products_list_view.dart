import 'package:flutter/material.dart';
import 'package:open_fashion_app/models/product_model.dart';
import 'package:open_fashion_app/widgets/custom_text.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.50,
        mainAxisSpacing: 0,
        crossAxisSpacing: 15,
      ),

      itemCount: ProductModel.products.length,
      itemBuilder: (context, index) {
        final product = ProductModel.products[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(product.imgpath),
            CustomText(
              text: product.title,
              size: 12,
              weight: FontWeight.w500,
              color: Colors.white,
            ),
            CustomText(
              text: product.subtitle,
              size: 12,
              max: 1,
              weight: FontWeight.w400,
              color: Color(0xffF9F9F9),
            ),
            CustomText(
              text: "\$ ${product.price.toString()}",
              size: 15,
              weight: FontWeight.w400,
              color: Color(0xffDD8560),
            ),
          ],
        );
      },
    );
  }
}
