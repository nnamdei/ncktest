import 'package:flutter/material.dart';

class TopupPage extends StatelessWidget {
  const TopupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'Top Up',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black),
                ),
        
              ],
            ),

                    Text(
                  'Select Retailer you wish to purchase from',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black),
                ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 32),
                decoration: BoxDecoration(color: Colors.black),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(child: Image.asset('name'))),
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
                      width: 10,
                    ),
                  ],
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 32),
                decoration: BoxDecoration(color: Colors.black),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(child: Image.asset('name'))),
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
                      width: 10,
                    ),
                  ],
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 32),
                decoration: BoxDecoration(color: Colors.black),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(child: Image.asset('name'))),
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
                      width: 10,
                    ),
                  ],
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 32),
                decoration: BoxDecoration(color: Colors.black),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(child: Image.asset('name'))),
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
                      width: 10,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
