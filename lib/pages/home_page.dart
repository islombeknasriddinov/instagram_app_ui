import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:instagram_app_ui/pages/detail_page.dart';
import 'package:instagram_app_ui/pages/feed_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentPage = 0;
  var pages = [
    FeedPage(),
    DetailPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Feather.camera),
          onPressed: (){},
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text("Instagram", style: TextStyle(color: Colors.black),),
        actions: [
          Row(
            children: [
              IconButton(
                icon: Icon(Feather.tv),
                onPressed: (){},
                color: Colors.black,
              ),
              IconButton(
                icon: Icon(FontAwesome.send_o),
                onPressed: (){},
                color: Colors.black,
              ),
            ],
          )

        ],
      ),
      body: pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: (i){
          setState(() {
            _currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: const[
          BottomNavigationBarItem(
              icon: Icon(Foundation.home),
              label: "home"
          ),

          BottomNavigationBarItem(
            icon: Icon(Feather.search),
              label: "search"
          ),

          BottomNavigationBarItem(
            icon: Icon(Feather.plus_square),
              label: "add"
          ),

          BottomNavigationBarItem(
            icon: Icon(Feather.heart),
              label: "like"
          ),

          BottomNavigationBarItem(
            icon: Icon(Feather.user),
              label: "profile"
          ),
        ],
      ),
    );
  }
}
