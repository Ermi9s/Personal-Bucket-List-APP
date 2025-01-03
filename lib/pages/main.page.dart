import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kum/pages/home.page.dart';
import 'package:kum/widgets/custom.search.bar.dart';


List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(
    icon: Icon(CupertinoIcons.home),
    label: "Home",
  ),
  BottomNavigationBarItem(
    icon: Icon(CupertinoIcons.bookmark),
    label: "Important",
  ),
];


class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  MainPageState createState() => MainPageState(); 
}

class MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  final List<Widget> pages = [Homepage(),];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
          "L-I-S-T",
           
          style: TextStyle(
            letterSpacing: 5,
            fontSize: 17,
          ),),  

          actions: [
            IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: Customsearchbar(),
                );
              }, 
              icon: Icon(Icons.search_rounded),
            )
          ],

        ),
        body: pages[selectedIndex],
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: items,
          currentIndex: selectedIndex,
          onTap: _onItemTapped,
        ),
        
    );
  }
}