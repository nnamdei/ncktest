import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 48,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.greenAccent),
        child: Center(
          child: Text(
            'Payment',
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
                  'Checkout',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ],
            ),
            Text(
              'Order summary',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.grey),
              child: ListTile(
                  title: Text('Order 1'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Swap Cylinder',
                        style: TextStyle(color: Colors.green),
                      ),
                      Row(
                        children: [
                          Text(
                            '3.2kg',
                            style: TextStyle(color: Colors.green),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                          ),
                          Text('4 Qty')
                        ],
                      ),
                    ],
                  ),
                  trailing: Text('NGN 1,200')),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Total'), Text('NGN 7400')],
            ),
            Text('Delivery address'),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                title: Text('32b Oxley Street, Ilaje Lekki Lagos'),
                subtitle: Text(
                  'Change',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
