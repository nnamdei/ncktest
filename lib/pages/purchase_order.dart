import 'package:flutter/material.dart';

class PurchaseOrder extends StatefulWidget {
  PurchaseOrder({Key? key}) : super(key: key);

  @override
  State<PurchaseOrder> createState() => _PurchaseOrderState();
}

class _PurchaseOrderState extends State<PurchaseOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.greenAccent),
        child: Center(
          child: Text(
            'Continue',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                  'Purchase Order',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ],
            ),
            Text(
              'Select your order preference',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: 1, color: Colors.grey)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset('name'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Swap Cylinder',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                        Spacer(),
                        Radio(
                          value: true,
                          onChanged: onChanged,
                          groupValue: false,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset('name'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'New Cylinder',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        ),
                        Spacer(),
                        Radio(
                          value: true,
                          onChanged: onChanged,
                          groupValue: false,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      children: [
                        Flexible(
                          child: Stack(
                            children: [
                              Text('Cylinder Weight'),
                              Container(
                                child: DropdownButton<String>(
                                  onChanged: cylinderWeight,
                                  value: "Child 1",
                                  style: new TextStyle(
                                      fontSize: 12.0,
                                      color: const Color(0xFF202020),
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "Roboto"),
                                  items: <DropdownMenuItem<String>>[
                                    const DropdownMenuItem<String>(
                                        value: "Child 1",
                                        child: const Text("Child 1")),
                                    const DropdownMenuItem<String>(
                                        value: "Child 2",
                                        child: const Text("Child 2")),
                                    const DropdownMenuItem<String>(
                                        value: "Child 3",
                                        child: const Text("Child 3")),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Stack(
                            children: [
                              Text('Number'),
                              Container(
                                child: DropdownButton<String>(
                                  onChanged: cylinderWeight,
                                  value: "Child 1",
                                  style: new TextStyle(
                                      fontSize: 12.0,
                                      color: const Color(0xFF202020),
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "Roboto"),
                                  items: <DropdownMenuItem<String>>[
                                    const DropdownMenuItem<String>(
                                        value: "Child 1",
                                        child: const Text("Child 1")),
                                    const DropdownMenuItem<String>(
                                        value: "Child 2",
                                        child: const Text("Child 2")),
                                    const DropdownMenuItem<String>(
                                        value: "Child 3",
                                        child: const Text("Child 3")),
                                  ],
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
            ExpansionTile(
              title: Text(
                'Order 2',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.grey),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset('name'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Swap Cylinder',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                            Spacer(),
                            Radio(
                              value: true,
                              onChanged: onChanged,
                              groupValue: false,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset('name'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'New Cylinder',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                            Spacer(),
                            Radio(
                              value: true,
                              onChanged: onChanged,
                              groupValue: false,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Row(
                          children: [
                            Flexible(
                              child: Stack(
                                children: [
                                  Text('Cylinder Weight'),
                                  Container(
                                    child: DropdownButton<String>(
                                      onChanged: cylinderWeight,
                                      value: "Child 1",
                                      style: new TextStyle(
                                          fontSize: 12.0,
                                          color: const Color(0xFF202020),
                                          fontWeight: FontWeight.w200,
                                          fontFamily: "Roboto"),
                                      items: <DropdownMenuItem<String>>[
                                        const DropdownMenuItem<String>(
                                            value: "Child 1",
                                            child: const Text("Child 1")),
                                        const DropdownMenuItem<String>(
                                            value: "Child 2",
                                            child: const Text("Child 2")),
                                        const DropdownMenuItem<String>(
                                            value: "Child 3",
                                            child: const Text("Child 3")),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Stack(
                                children: [
                                  Text('Number'),
                                  Container(
                                    child: DropdownButton<String>(
                                      onChanged: cylinderWeight,
                                      value: "Child 1",
                                      style: new TextStyle(
                                          fontSize: 12.0,
                                          color: const Color(0xFF202020),
                                          fontWeight: FontWeight.w200,
                                          fontFamily: "Roboto"),
                                      items: <DropdownMenuItem<String>>[
                                        const DropdownMenuItem<String>(
                                            value: "Child 1",
                                            child: const Text("Child 1")),
                                        const DropdownMenuItem<String>(
                                            value: "Child 2",
                                            child: const Text("Child 2")),
                                        const DropdownMenuItem<String>(
                                            value: "Child 3",
                                            child: const Text("Child 3")),
                                      ],
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

  void cylinderWeight(String? value) {}
}
