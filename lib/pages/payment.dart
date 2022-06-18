import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.greenAccent),
        child: Center(
          child: Text(
            'Pay',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                    child: Center(child: Icon(Icons.arrow_back_ios_new)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1, color: Colors.black))),
                SizedBox(
                  width: 10,
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
            Text(
              'Select payment method',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.grey),
              height: 96,
              child: Row(
                children: [
                  Icon(Icons.credit_card_rounded,
                      color: Colors.green, size: 16),
                  Text('Wallet'),
                  Text('NGN 22,000'),
                  Radio(value: true, groupValue: false, onChanged: onChanged)
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.grey),
              height: 96,
              child: Row(
                children: [
                  Icon(Icons.account_balance_wallet,
                      color: Colors.green, size: 16),
                  Text('Card'),
                  Radio(value: true, groupValue: false, onChanged: onChanged)
                ],
              ),
            ),
            Divider(),
                    Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.grey),
              height: 96,
              child: Row(
                children: [
                  Icon(Icons.account_balance_wallet,
                      color: Colors.green, size: 16),
                  Text('****  **** 5163'),
                  Radio(value: true, groupValue: false, onChanged: onChanged)
                ],
              ),
            ),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.grey),
              height: 96,
              child: Row(
                children: [
                  Icon(Icons.account_balance_wallet,
                      color: Colors.green, size: 16),
                  Text('****  **** 5163'),
                  Radio(value: true, groupValue: false, onChanged: onChanged)
                ],
              ),
            ),
                  Row(
              children: [
                Icon(
                  Icons.add,
                  color: Colors.greenAccent,
                  size: 16,
                ),
                Text('Add new card',
                    style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
              ],
            )
          ],
        ),
      ),
    );
  }

  void onChanged(bool? value) {}
}
