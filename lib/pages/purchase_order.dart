import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ncktest/pages/delivery_address.dart';
import 'package:ncktest/utils/colors.dart';

enum Choices { swapCylinder, newCylinder }

class PurchaseOrder extends StatefulWidget {
  PurchaseOrder({Key? key}) : super(key: key);

  @override
  State<PurchaseOrder> createState() => _PurchaseOrderState();
}

class _PurchaseOrderState extends State<PurchaseOrder> {
  Choices? _choices = Choices.swapCylinder;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DeliveryAddress()));
        },
        child: Container(
          height: 56,
          margin: EdgeInsets.only(left: 32, right: 32, bottom: 32),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16), color: AppColors.color1),
          child: Center(
            child: Text(
              'Continue',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
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
                      'Purchase Order',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0, bottom: 16),
                child: Text(
                  'Select your order preference',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16),
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                      // border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey[100]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 24),
                      Container(
                        height: 56,
                        margin: EdgeInsets.symmetric(horizontal: 32),
                        decoration: BoxDecoration(
                            color: _choices == Choices.swapCylinder
                                ? AppColors.color1
                                : Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                width: 1,
                                color: _choices == Choices.swapCylinder
                                    ? AppColors.color1
                                    : Colors.grey)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset('assets/images/cylinder.png',
                                height: 24),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Swap Cylinder',
                              style: TextStyle(
                                  color: _choices == Choices.swapCylinder
                                      ? Colors.white
                                      : Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                            Spacer(),
                            Radio(
                              value: Choices.swapCylinder,
                                activeColor: _choices == Choices.newCylinder
                                  ? Colors.white
                                  : Colors.grey[200],
                              onChanged: (Choices? value) {
                                setState(() {
                                  _choices = value;
                                });
                              },
                              groupValue: _choices,
                            ),
                            // SizedBox(
                            //   width: 10,
                            // ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 56,
                        margin: EdgeInsets.symmetric(horizontal: 32),
                        decoration: BoxDecoration(
                            color: _choices == Choices.newCylinder
                                ? AppColors.color1
                                : Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                width: 1,
                                color: _choices == Choices.newCylinder
                                    ? AppColors.color1
                                    : Colors.grey)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset('assets/images/cylinder.png',
                                height: 24),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'New Cylinder',
                              style: TextStyle(
                                  color: _choices == Choices.newCylinder
                                      ? Colors.white
                                      : Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                            Spacer(),
                            Radio(
                              value: Choices.newCylinder,
                              activeColor: _choices == Choices.newCylinder
                                  ? Colors.white
                                  : Colors.grey[200],
                              onChanged: (Choices? value) {
                                setState(() {
                                  _choices = value;
                                });
                              },
                              groupValue: _choices,
                            )
                            // SizedBox(
                            //   width: 10,
                            // ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Stack(
                                children: [
                                  Text('Cylinder Weight'),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 24.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      width: 150,
                                      child: DropdownButtonHideUnderline(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, right: 4),
                                          child: DropdownButton<String>(
                                            onChanged: cylinderWeight,
                                            value: "00",
                                            style: new TextStyle(
                                                // fontSize: 12.0,
                                                color: const Color(0xFF202020),
                                               
                                                ),
                                            items: <DropdownMenuItem<String>>[
                                              const DropdownMenuItem<String>(
                                                  value: "00",
                                                  child: const Text("00")),
                                              const DropdownMenuItem<String>(
                                                  value: "01",
                                                  child: const Text("01")),
                                              const DropdownMenuItem<String>(
                                                  value: "02",
                                                  child: const Text("02")),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Flexible(
                              child: Stack(
                                children: [
                                  Text('Number'),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 24.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      width: 150,
                                      child: DropdownButtonHideUnderline(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, right: 4),
                                          child: DropdownButton<String>(
                                            onChanged: cylinderWeight,
                                                  value: "00",
                                            style: new TextStyle(
                                                // fontSize: 12.0,
                                                color: const Color(0xFF202020),
                                               
                                                ),
                                            items: <DropdownMenuItem<String>>[
                                              const DropdownMenuItem<String>(
                                                  value: "00",
                                                  child: const Text("00")),
                                              const DropdownMenuItem<String>(
                                                  value: "01",
                                                  child: const Text("01")),
                                              const DropdownMenuItem<String>(
                                                  value: "02",
                                                  child: const Text("02")),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
                child: ExpansionTile(
                  textColor: Colors.black,
                  title: Text(
                    'Order 2',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                  ),
                  children: <Widget>[
                   Container(
                  height: 250,
                  decoration: BoxDecoration(
                      // border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey[100]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 24),
                      Container(
                        height: 56,
                        margin: EdgeInsets.symmetric(horizontal: 32),
                        decoration: BoxDecoration(
                            color: _choices == Choices.swapCylinder
                                ? AppColors.color1
                                : Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                width: 1,
                                color: _choices == Choices.swapCylinder
                                    ? AppColors.color1
                                    : Colors.grey)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset('assets/images/cylinder.png',
                                height: 24),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Swap Cylinder',
                              style: TextStyle(
                                  color: _choices == Choices.swapCylinder
                                      ? Colors.white
                                      : Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                            Spacer(),
                            Radio(
                              value: Choices.swapCylinder,
                                activeColor: _choices == Choices.newCylinder
                                  ? Colors.white
                                  : Colors.grey[200],
                              onChanged: (Choices? value) {
                                setState(() {
                                  _choices = value;
                                });
                              },
                              groupValue: _choices,
                            ),
                            // SizedBox(
                            //   width: 10,
                            // ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 56,
                        margin: EdgeInsets.symmetric(horizontal: 32),
                        decoration: BoxDecoration(
                            color: _choices == Choices.newCylinder
                                ? AppColors.color1
                                : Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                width: 1,
                                color: _choices == Choices.newCylinder
                                    ? AppColors.color1
                                    : Colors.grey)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset('assets/images/cylinder.png',
                                height: 24),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'New Cylinder',
                              style: TextStyle(
                                  color: _choices == Choices.newCylinder
                                      ? Colors.white
                                      : Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                            Spacer(),
                            Radio(
                              value: Choices.newCylinder,
                              activeColor: _choices == Choices.newCylinder
                                  ? Colors.white
                                  : Colors.grey[200],
                              onChanged: (Choices? value) {
                                setState(() {
                                  _choices = value;
                                });
                              },
                              groupValue: _choices,
                            )
                            // SizedBox(
                            //   width: 10,
                            // ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Stack(
                                children: [
                                  Text('Cylinder Weight'),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 24.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      width: 150,
                                      child: DropdownButtonHideUnderline(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, right: 4),
                                          child: DropdownButton<String>(
                                            onChanged: cylinderWeight,
                                            value: "00",
                                            style: new TextStyle(
                                                // fontSize: 12.0,
                                                color: const Color(0xFF202020),
                                               
                                                ),
                                            items: <DropdownMenuItem<String>>[
                                              const DropdownMenuItem<String>(
                                                  value: "00",
                                                  child: const Text("00")),
                                              const DropdownMenuItem<String>(
                                                  value: "01",
                                                  child: const Text("01")),
                                              const DropdownMenuItem<String>(
                                                  value: "02",
                                                  child: const Text("02")),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Flexible(
                              child: Stack(
                                children: [
                                  Text('Number'),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 24.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      width: 150,
                                      child: DropdownButtonHideUnderline(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, right: 4),
                                          child: DropdownButton<String>(
                                            onChanged: cylinderWeight,
                                                  value: "00",
                                            style: new TextStyle(
                                                // fontSize: 12.0,
                                                color: const Color(0xFF202020),
                                               
                                                ),
                                            items: <DropdownMenuItem<String>>[
                                              const DropdownMenuItem<String>(
                                                  value: "00",
                                                  child: const Text("00")),
                                              const DropdownMenuItem<String>(
                                                  value: "01",
                                                  child: const Text("01")),
                                              const DropdownMenuItem<String>(
                                                  value: "02",
                                                  child: const Text("02")),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16),
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: AppColors.color1,
                      size: 24,
                    ),
                    SizedBox(width: 10),
                    Text('Add order',
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

  void cylinderWeight(String? value) {}
}
