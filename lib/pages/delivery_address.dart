import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ncktest/pages/checkout.dart';
import 'package:ncktest/utils/colors.dart';

enum Address { address1, address2 }

class DeliveryAddress extends StatefulWidget {
  DeliveryAddress({Key? key}) : super(key: key);

  @override
  State<DeliveryAddress> createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
  Address? _address = Address.address1;

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
            height: 56,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: AppColors.color1),
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
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    title: Text('32b Oxley Street, Ilaje Lekki Lagos'),
                    subtitle: Text(
                      'Change',
                      style: TextStyle(color: AppColors.color1),
                    ),
                    trailing: Radio(
                        value: Address.address1,
                        activeColor: _address == Address.address1
                            ? AppColors.color1
                            : Colors.grey,
                        groupValue: _address,
                        onChanged: (Address? value) {
                          setState(() {
                            _address = value;
                          });
                        }),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                      title: Text('32b Oxley Street, Ilaje Lekki Lagos.....'),
                      subtitle: Text(
                        'Change',
                        style: TextStyle(color: AppColors.color1),
                      ),
                      trailing: Radio(
                          value: Address.address2,
                          activeColor: _address == Address.address2
                              ? AppColors.color1
                              : Colors.grey,
                          groupValue: _address,
                          onChanged: (Address? value) {
                            setState(() {
                              _address = value;
                            });
                          })),
                ),
              ),
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
                    Text('Add address',
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
}
