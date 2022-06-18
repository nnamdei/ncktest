import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ncktest/pages/home.dart';

class AppointmentSuccess extends StatelessWidget {
  const AppointmentSuccess({Key? key}) : super(key: key);

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
                          height: 100.h,
                        ),
                        Center(
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 50,
                            child: Icon(
                              Icons.done_outlined,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Homepage()));
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16),
                            child: Container(
                                decoration: BoxDecoration(color: Colors.green),
                                //inner container
                                height: 48, //height of inner container
                                // width:
                                //     double.infinity, //width to 100% match to parent container.
                                // color: Colors.yellow,
                                child: Center(
                                  child: Text(
                                    'Home',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12),
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
