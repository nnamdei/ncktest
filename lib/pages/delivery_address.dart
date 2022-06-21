import 'package:flutter/material.dart';
import 'package:ncktest/pages/checkout.dart';

class DeliveryAddress extends StatefulWidget {
  DeliveryAddress({Key? key}) : super(key: key);

  @override
  State<DeliveryAddress> createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Checkout()));
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 24),
          child: Container(
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: Colors.green),
            child: Center(
              child: Text(
                'Checkout',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
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
                            border: Border.all(width: 1, color: Colors.black))),
                  ),
                  SizedBox(
                    width: 20,
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
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Select delivery address',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  title: Text('32b Oxley Street, Ilaje Lekki Lagos'),
                  subtitle: Text(
                    'Change',
                    style: TextStyle(color: Colors.green),
                  ),
                  trailing: Radio(
                      value: true, groupValue: false, onChanged: onChanged),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                title: Text('32b Oxley Street, Ilaje Lekki Lagos'),
                subtitle: Text(
                  'Change',
                  style: TextStyle(color: Colors.green),
                ),
                trailing:
                    Radio(value: true, groupValue: false, onChanged: onChanged),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.green,
                    size: 24,
                  ),
                  SizedBox(width: 10),
                  Text('Add address',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void onChanged(bool? value) {}
}
