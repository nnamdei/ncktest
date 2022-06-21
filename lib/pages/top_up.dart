import 'package:flutter/material.dart';
import 'package:ncktest/pages/purchase_order.dart';

class TopupPage extends StatelessWidget {
  const TopupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24.0, bottom: 32, left: 32),
              child: Row(
                children: [
                  Container(
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
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Top Up',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32, bottom: 32),
              child: Text(
                'Select Retailer you wish to purchase from',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PurchaseOrder()));
              },
              child: Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 24,
                      ),
                      Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                              child: Image.asset(
                            'assets/images/oando.png',
                            height: 32,
                            width: 32,
                          ))),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Oando Petrol Station',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 10,
                      ),
                      SizedBox(
                        width: 24,
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 32),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                            child: Image.asset(
                          'assets/images/total-logo.jpeg',
                          height: 32,
                          width: 32,
                        ))),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Total Retail',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 10,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 32),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                            child: Image.asset(
                          'assets/images/enyo.png',
                          height: 32,
                          width: 32,
                        ))),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Enyo Retail',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 10,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 32),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                            child: Image.asset(
                          'assets/images/ardova.jpeg',
                          height: 32,
                          width: 32,
                        ))),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'AP Gas Station',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 10,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
