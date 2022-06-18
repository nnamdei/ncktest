import 'package:flutter/material.dart';

class DeliveryAddress extends StatefulWidget {
  DeliveryAddress({Key? key}) : super(key: key);

  @override
  State<DeliveryAddress> createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.greenAccent),
        child: Center(
          child: Text(
            'Checkout',
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
                  'Delivery address',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ],
            ),
            Text(
              'Select delivery address',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
            ListTile(
              title: Text('32b Oxley Street, Ilaje Lekki Lagos'),
              subtitle: Text(
                'Change',
                style: TextStyle(color: Colors.green),
              ),
              trailing:
                  Radio(value: true, groupValue: false, onChanged: onChanged),
            ),
            ListTile(
              title: Text('32b Oxley Street, Ilaje Lekki Lagos'),
              subtitle: Text(
                'Change',
                style: TextStyle(color: Colors.green),
              ),
              trailing:
                  Radio(value: true, groupValue: false, onChanged: onChanged),
            ),
            Row(
              children: [
                Icon(
                  Icons.add,
                  color: Colors.greenAccent,
                  size: 16,
                ),
                Text('Add order',
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
