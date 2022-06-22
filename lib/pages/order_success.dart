import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ncktest/pages/home.dart';
import 'package:ncktest/utils/colors.dart';

class OrderBooked extends StatelessWidget {
  const OrderBooked({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenUtilInit(
            designSize: const Size(360, 690),
            builder: (context, child) => SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 200.h,
                        ),
                        Center(
                          child: CircleAvatar(
                              backgroundColor: AppColors.color1,
                              radius: 50,
                              child: Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 3, color: Colors.white)),
                                child: Icon(
                                  Icons.done_outlined,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              )),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Center(
                            child: Text(
                          'Order booked\nsuccessfully',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        )),
                        SizedBox(
                          height: 60.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Homepage()));
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16),
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: AppColors.color1),
                                //inner container
                                height: 56, //height of inner container
                                // width:
                                //     double.infinity, //width to 100% match to parent container.
                                // color: Colors.yellow,
                                child: Center(
                                  child: Text(
                                    'Home',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14),
                                  ),
                                )), //background color of inner container
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                      ]),
                )));
  }
}
