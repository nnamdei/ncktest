import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ncktest/pages/top_up.dart';
import 'package:ncktest/utils/colors.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) => SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [TopSection(size: size), MidSection(size: size)],
          ),
        ),
      ),
    );
  }
}

class TopSection extends StatelessWidget {
  const TopSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.6,
      child: Stack(children: [
        Container(
          height: size.height * 0.25,
          width: size.width,
          decoration: BoxDecoration(color: AppColors.color1),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(children: [
                Container(
                  child: Icon(Icons.person_outline_sharp,color:Colors.white),
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      shape: BoxShape.circle),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Paul N.',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                      child: Icon(
                    Icons.notifications_none_rounded,
                    color: AppColors.color1,
                  )),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                )
              ]),
            ),
          ),
        ),
        NewWidget(size: size),
      ]),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 6,
      right: 10,
      top: 125,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppColors.color2,
                borderRadius: BorderRadius.circular(16)),
            height: 160,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                top: 16,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 24,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Center(
                            child: Text('Cylinder ID: #942',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.color8,
                                )),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: AppColors.color3),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: '25',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 48)),
                        TextSpan(
                            text: 'kg',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 24))
                      ])),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 24,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Last purchase was 2 hours ago',
                            style: TextStyle(
                                color: AppColors.color9,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: AppColors.color3),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/images/cylinder.png',
                  ),
                  SizedBox(width: 10)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 5,
                backgroundColor: AppColors.color10,
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 5,
                backgroundColor: AppColors.color11,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 56,
                  width: 160,
                  decoration: BoxDecoration(
                      color: AppColors.color1,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      'Add Cylinder',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TopupPage()));
                },
                child: Container(
                    height: 56,
                    width: 160,
                    decoration: BoxDecoration(
                        color: AppColors.color1,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        'Top Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )),
              )
            ],
          )
          //  SizedBox(height: 10,),
          //    Row(
          //     children: [
          //       Text('Activity'),
          //       Text(
          //         'view all',
          //         style: TextStyle(
          //           color: Colors.green,
          //         ),
          //       ),
          //       Icon(
          //         Icons.arrow_forward_ios_outlined,
          //         color: Colors.green,
          //       )
          //     ],
          //   ),
        ],
      ),
    );
  }
}

class MidSection extends StatelessWidget {
  const MidSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 200,
      child: Container(
        height: size.height * 0.4,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text('Activity'),
                  Spacer(),
                  Text(
                    'view all',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.green,
                    size: 10,
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
              Container(
                height: size.height,
                child: ListView.separated(
                  itemCount: 3,
                  separatorBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Image.asset(
                        'assets/images/oando.png',
                        height: 48,
                        width: 48,
                      ),
                      title: Text(
                        'Swap Order',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '17 Agustus 2021',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.grey),
                      ),
                      trailing: Text(
                        '- N 4,500',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
