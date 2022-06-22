import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ncktest/pages/order_success.dart';
import 'package:ncktest/utils/colors.dart';

enum PaymentOptions { card, wallet }

class PaymentPage extends StatefulWidget {
  PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  PaymentOptions? _options = PaymentOptions.wallet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 24),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => OrderBooked()));
          },
          child: Container(
            height: 56,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: AppColors.color1),
            child: Center(
              child: Text(
                'Pay',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ),
      body: ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 32, left: 16),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: 48,
                          width: 48,
                          child: Center(
                              child: Icon(
                            Icons.arrow_back_ios_new,
                            size: 16,
                          )),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(width: 1, color: Colors.black))),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Payment',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, bottom: 24),
                child: Text(
                  'Select payment method',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16, bottom: 24),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[200]),
                  height: 96,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 32,
                      ),
                      Icon(Icons.credit_card_rounded,
                          color: AppColors.color1, size: 24),
                      SizedBox(
                        width: 32,
                      ),
                      Text('Wallet'), Spacer(),
                      Text('NGN 22,000'),
                      //    SizedBox(
                      //   width: 16,
                      // ),
                      Radio(
                          value: PaymentOptions.wallet,
                             activeColor: _options == PaymentOptions.wallet
                              ? AppColors.color1
                              : Colors.grey,
                          groupValue: _options,
                          onChanged: (PaymentOptions? value) {
                            setState(() {
                              _options = value;
                            });
                          })
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16, bottom: 24),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[200]),
                  height: 96,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 32,
                      ),
                      Icon(Icons.account_balance_wallet,
                          color: AppColors.color1, size: 24),
                      SizedBox(
                        width: 32,
                      ),
                      Text('Card'), Spacer(),

                      //    SizedBox(
                      //   width: 16,
                      // ),
                      Radio(
                          value: PaymentOptions.card,
                                                    activeColor: _options == PaymentOptions.card
                              ? AppColors.color1
                              : Colors.grey,
                          groupValue: _options,
                          onChanged: (PaymentOptions? value) {
                            setState(() {
                              _options = value;
                            });
                          })
                    ],
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, bottom: 16),
                child: Text('Select card'),
              ),
              _options == PaymentOptions.card
                  ? SizedBox(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0, right: 16, bottom: 24),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.grey[200]),
                              height: 96,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 32,
                                  ),
                               Image.asset('assets/images/mastercard.png',height: 40 ),
                                  Spacer(),
                                  Text('**** **** 5163'),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  //    SizedBox(
                                  //   width: 16,
                                  // ),
                                  Radio(
                                      value: true,
                                      groupValue: false,
                                      onChanged: onChanged)
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0, right: 16, bottom: 24),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.grey[200]),
                              height: 96,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 32,
                                  ),
                                  Image.asset('assets/images/visa.png',height: 20,),
                                  Spacer(),
                                  Text('**** **** 5163'),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  //    SizedBox(
                                  //   width: 16,
                                  // ),
                                  Radio(
                                      value: true,
                                      groupValue: false,
                                      onChanged: onChanged)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16),
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: AppColors.color1,
                      size: 24,
                    ),
                    SizedBox(width: 10),
                    Text('Add new card',
                        style: TextStyle(
                            color: AppColors.color1,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onChanged(bool? value) {}
}
