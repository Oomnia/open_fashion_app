import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/core/colors.dart';
import 'package:open_fashion_app/screens/add_adress_page.dart';
import 'package:open_fashion_app/screens/add_card.dart';
import 'package:open_fashion_app/widgets/address_info.dart';
import 'package:open_fashion_app/widgets/cart_widget.dart';
import 'package:open_fashion_app/widgets/custom_app_bar.dart';
import 'package:open_fashion_app/widgets/custom_button.dart';
import 'package:open_fashion_app/widgets/custom_dialog.dart';
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
  dynamic _savedCard;
  late int selectedQty;
  @override
  void initState() {
    selectedQty = widget.qty;
    super.initState();
  }

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

  void _openCard(context) async {
    final cardData = await Navigator.push(
      context,
      MaterialPageRoute(builder: (c) => AddCard()),
    );
    if (cardData != null) {
      setState(() {
        _savedCard = cardData;
      });
    }
  }

  void _editCard() async {
    final newCadr = await Navigator.push(
      context,
      MaterialPageRoute(builder: (c) => AddCard(editCard: _savedCard)),
    );
    setState(() {
      _savedCard = newCadr;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isBlackk: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
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
              _savedAddress != null
                  ? AddressInfo(
                      savedAddress: _savedAddress,
                      onTap: _editAddress,
                    )
                  : SizedBox.shrink(),
              _savedAddress == null
                  ? ShippingMethod(
                      txt: 'Add shipping adress',
                      icon: Icons.add,
                      isfree: false,
                      ontap: () => _openAddress(context),
                    )
                  : SizedBox.shrink(),
              Gap(20),

              _savedAddress != null && _savedCard != null
                  ? SizedBox.shrink()
                  : CustomText(
                      text: 'Shipping Method'.toUpperCase(),
                      size: 14,
                      weight: FontWeight.w600,
                      color: Color(0xff888888),
                    ),
              Gap(20),

              _savedAddress != null && _savedCard != null
                  ? SizedBox.shrink()
                  : ShippingMethod(
                      txt: 'Pickup at store',
                      icon: Icons.keyboard_arrow_down,
                      isfree: true,
                    ),
              Gap(20),

              _savedAddress != null && _savedCard != null
                  ? SizedBox.shrink()
                  : CustomText(
                      text: 'Payment method'.toUpperCase(),
                      size: 14,
                      weight: FontWeight.w600,
                      color: Color(0xff888888),
                    ),
              Gap(20),
              _savedCard != null
                  ? Column(
                      children: [
                        Divider(color: Colors.grey[300], thickness: 1),
                        Gap(10),

                        GestureDetector(
                          onTap: () => _editCard(),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/svgs/MasterCard.svg',
                                width: 36,
                              ),
                              Gap(10),
                              CustomText(
                                text: "Master Card ending",
                                color: Colors.black,
                                size: 14,
                                weight: FontWeight.w400,
                              ),
                              Gap(10),
                              CustomText(
                                text:
                                    '••••${_savedCard['number'].toString().substring(_savedCard['number'].length - 2)}',
                                size: 14,
                                weight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              Spacer(),
                              SvgPicture.asset('assets/svgs/Forward.svg'),
                            ],
                          ),
                        ),
                        Gap(10),

                        Divider(color: Colors.grey[300], thickness: 1),
                      ],
                    )
                  : ShippingMethod(
                      txt: 'Select payment method',
                      icon: Icons.keyboard_arrow_down,
                      isfree: false,
                      ontap: () => _openCard(context),
                    ),
              Gap(50),
              _savedAddress != null && _savedCard != null
                  ? CartWidget(
                      imgpath: widget.imgpath,
                      title: widget.title,
                      subtitle: widget.subtitle,
                      price: widget.price,
                      qty: widget.qty,
                      onQtyChanged: (qty) {
                        setState(() {
                          selectedQty = qty;
                        });
                      },
                    )
                  : SizedBox.shrink(),
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
                    text: '\$ ${widget.price * selectedQty}',
                    size: 16,
                    weight: FontWeight.w600,
                    color: Color(0xffDD8560),
                  ),
                ],
              ),
              Gap(20),
              CustomButton(
                onTap: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return CustomDialog();
                    },
                  );
                },
                text: _savedAddress != null && _savedCard != null
                    ? 'Checkout'.toUpperCase()
                    : 'Place order '.toUpperCase(),
                svgpath: 'assets/svgs/shopping bag.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}


