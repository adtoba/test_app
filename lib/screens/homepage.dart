import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int _currentIndex = 0;

  PageController pageController =
      PageController(keepPage: true, initialPage: 0);

  void onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
    pageController.jumpToPage(index);
  }

  List<String> folders = [
    'Documents',
    'Pictures',
    'Downloads',
    'Android',
    'Music',
    'Applications',
    'Documents',
    'Pictures',
    'Downloads',
    'Android',
    'Music',
    'Applications'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/avatar.jpg'),
              ),
              IconButton(icon: Icon(Icons.settings), onPressed: () {})
            ],
          ),
        ),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: [
          Container(
            padding: EdgeInsets.all(30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Home',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none),
                        fillColor: Colors.grey.withOpacity(.4),
                        contentPadding: EdgeInsets.all(10)),
                  ),
                  SizedBox(height: 30),
                  GridView.count(
                    crossAxisCount: 3,
                    childAspectRatio: 0.7,
                    shrinkWrap: true,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    physics: NeverScrollableScrollPhysics(),
                    children: folders.map((e) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            child: SvgPicture.asset('assets/images/folder.svg'),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(.3),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(height: 5),
                          Text(e)
                        ],
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Safe',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text('Safe item appears here')
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text('Profile item appears here')
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 1,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(37), topRight: Radius.circular(37))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Icon(Icons.home),
                color: _currentIndex == 0 ? Colors.black : Colors.grey,
                onPressed: () {
                  onPageChanged(0);
                }),
            IconButton(
                icon: Icon(Icons.lock),
                color: _currentIndex == 1 ? Colors.black : Colors.grey,
                onPressed: () {
                  onPageChanged(1);
                }),
            IconButton(
                icon: Icon(Icons.person_outline),
                color: _currentIndex == 2 ? Colors.black : Colors.grey,
                onPressed: () {
                  onPageChanged(2);
                })
          ],
        ),
      ),
    );
  }
}
