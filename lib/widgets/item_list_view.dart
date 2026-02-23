import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/models/list_item_model.dart';
import 'package:open_fashion_app/widgets/custom_text.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: ListItemModel.itemList.length,
        itemBuilder: (context, index) {
          final item = ListItemModel.itemList[index];
          return Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(item.imgpath, height: 350, fit: BoxFit.cover),
                Gap(10),

                CustomText(
                  text: item.title,
                  size: 12.93,
                  weight: FontWeight.w400,
                  color: Color(0xffFCFCFC),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
