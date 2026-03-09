import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion_app/widgets/custom_app_bar.dart';
import 'package:open_fashion_app/widgets/custom_button.dart';
import 'package:open_fashion_app/widgets/header.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key, this.editCard});
  final dynamic editCard;

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  String cardNumber = '';

  String expiryDate = '';

  String cardHolderName = '';

  String cvvCode = '';

  bool isShow = false;

  final _key = GlobalKey<FormState>();
    @override
  void initState() {
    if (widget.editCard != null) {
      cardNumber = widget.editCard['number'] ?? "";
     expiryDate = widget.editCard['date'] ?? "";
      cardHolderName = widget.editCard['name'] ?? "";
      cvvCode= widget.editCard['cvvCode'] ?? "";
      
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Color(0xFFD6D6D6),
        appBar: CustomAppBar(isBlackk: false),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Header(text: 'Payment method'),
                CreditCardWidget(
                  cardNumber: cardNumber,
                  expiryDate: expiryDate,
                  cardHolderName: cardHolderName,
                  cvvCode: cvvCode,
                  cardBgColor: Colors.black87,
                  showBackView: isShow,
                  onCreditCardWidgetChange: (v) {},
                  obscureCardCvv: false,
                  obscureCardNumber: true,
                  isHolderNameVisible: true,
                ),
                CreditCardForm(
                  cardNumber: cardNumber,
                  expiryDate: expiryDate,
                  cardHolderName: cardHolderName,
                  cvvCode: cvvCode,
                  onCreditCardModelChange: onCreditCardModelChange,
                  formKey: _key,
                ),
                Gap(50),
                CustomButton(
                  text: 'Add Card',
                  onTap: () {
                    if (_key.currentState!.validate()) {
                      final data = {
                        'number': cardNumber,
                        'date': expiryDate,
                        'name': cardHolderName,
                        'cvvCode': cvvCode,
                      };
                      Navigator.pop(context, data);
                    }
                  },
                ),
                Gap(10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel data) {
    setState(() {
      cardNumber = data.cardNumber;
      expiryDate = data.expiryDate;
      cardHolderName = data.cardHolderName;
      cvvCode = data.cvvCode;
      isShow = data.isCvvFocused;
    });
  }
}
