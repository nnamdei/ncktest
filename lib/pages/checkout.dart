import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ncktest/pages/payment.dart';
import 'package:ncktest/utils/colors.dart';

class Checkout extends StatelessWidget {
  final String? address;
  const Checkout({Key? key, this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 24),
        child: GestureDetector(
              onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PaymentPage()));
        },
          child: Container(
            height: 56,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: AppColors.color1),
            child: Center(
              child: Text(
                'Payment',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ),
      body: ScreenUtilInit(
            designSize: const Size(360, 690),
            builder: (context, child) =>  SingleChildScrollView(
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
                      'Checkout',
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
                  'Order summary',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16, top: 24),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[200]),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListTile(
                        title: Text('Order 1'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 5),
                            Text(
                              'Swap Cylinder',
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  '3.2kg',
                                  style: TextStyle(color: Colors.grey[500]),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  radius: 3,
                                  backgroundColor: Colors.grey[500],
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '4 Qty',
                                  style: TextStyle(color: Colors.grey[500]),
                                )
                              ],
                            ),
                          ],
                        ),
                        trailing: Text('NGN 1,200')),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16, top: 24),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[200]),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListTile(
                        title: Text('Order 1'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 5),
                            Text(
                              'Swap Cylinder',
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  '3.2kg',
                                  style: TextStyle(color: Colors.grey[500]),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  radius: 3,
                                  backgroundColor: Colors.grey[500],
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '4 Qty',
                                  style: TextStyle(color: Colors.grey[500]),
                                )
                              ],
                            ),
                          ],
                        ),
                        trailing: Text('NGN 1,200')),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Divider(
                  height: 1,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Total'), Text('NGN 7400')],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text('Delivery address'),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    title: Text('32b Oxley Street, Ilaje Lekki Lagos'),
                    subtitle: Text(
                      'Change',
                      style: TextStyle(color: AppColors.color1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
