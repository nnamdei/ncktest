import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

int _currentIndex = 0;
List<Widget> _children = [];

class _NavState extends State<Nav> {
  @override
  void initState() {
    //  _children = [Container(),Search(),AppointmentPage(),Profile()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(index: _currentIndex, children: _children),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(
          // fontFamily: gtwalsheimregular,
          fontSize: 14,
          fontWeight: FontWeight.normal,
          // color: AppColors.color13
        ),
        backgroundColor: Colors.white,
        selectedFontSize: 14,
        elevation: 2.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: tabItem,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.house),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_rounded),
            label: "Card",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_rounded),
            label: "Activity",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_sharp),
            label: "Profile",
          )
        ],
      ),
    );
  }

  void tabItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
