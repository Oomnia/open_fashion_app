import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/screens/add_adress_page.dart';
import 'package:open_fashion_app/widgets/address_info.dart';
import 'package:open_fashion_app/widgets/custom_app_bar.dart';
import 'package:open_fashion_app/widgets/custom_button.dart';
import 'package:open_fashion_app/widgets/custom_text.dart';
import 'package:open_fashion_app/widgets/header.dart';
import 'package:open_fashion_app/widgets/shipping_method.dart';

class PlaceOrderPage extends StatefulWidget {
  const PlaceOrderPage({
    super.key,
    required this.imgpath,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.qty,
    required this.total,
  });

  final String imgpath;
  final String title;
  final String subtitle;
  final double price;
  final int qty;
  final double total;

  @override
  State<PlaceOrderPage> createState() => _PlaceOrderPageState();
}

class _PlaceOrderPageState extends State<PlaceOrderPage> {
  
  dynamic _savedAddress;

  void _openAddress(context) async {
    final adressData = await Navigator.push(
      context,
      MaterialPageRoute(builder: (c) => AddAdressPage()),
    );
    if (adressData != null) {
      setState(() {
        _savedAddress = adressData;
      });
    }
  }

  void _editAddress() async {
    final newAddress = await Navigator.push(
      context,
      MaterialPageRoute(builder: (c) => AddAdressPage(editData: _savedAddress)),
    );
    setState(() {
      _savedAddress = newAddress;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isBlackk: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(text: 'Checkout'),
            CustomText(
              text: 'Shipping adress'.toUpperCase(),
              size: 14,
              weight: FontWeight.w600,
              color: Color(0xff888888),
            ),
 _savedAddress != null ? AddressInfo(
                      savedAddress: _savedAddress,
                      onTap: _editAddress,
                    ) : SizedBox.shrink(),            Gap(10),
           _savedAddress == null ? ShippingMethod(
              txt: 'Add shipping adress',
              icon: Icons.add,
              isfree: false,
              ontap: ()=> _openAddress(context)
            ): SizedBox.shrink(), 
            Gap(20),

            CustomText(
              text: 'Shipping Method'.toUpperCase(),
              size: 14,
              weight: FontWeight.w600,
              color: Color(0xff888888),
            ),
            Gap(20),

            ShippingMethod(
              txt: 'Pickup at store',
              icon: Icons.keyboard_arrow_down,
              isfree: true,
            ),
            Gap(20),

            CustomText(
              text: 'Payment method'.toUpperCase(),
              size: 14,
              weight: FontWeight.w600,
              color: Color(0xff888888),
            ),
            Gap(20),
            ShippingMethod(
              txt: 'select payment method',
              icon: Icons.keyboard_arrow_down,
              isfree: false,
            ),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Total'.toUpperCase(),
                  size: 14,
                  weight: FontWeight.w400,
                  color: Color(0xff333333),
                ),
                CustomText(
                  text: '\$ ${widget.price * widget.qty}',
                  size: 16,
                  weight: FontWeight.w600,
                  color: Color(0xffDD8560),
                ),
              ],
            ),
            Spacer(),
            CustomButton(
              onTap: () {},
              text: 'Place order'.toUpperCase(),
              svgpath: 'assets/svgs/shopping bag.svg',
            ),
            Gap(20),
          ],
        ),
      ),
    );
  }
}
