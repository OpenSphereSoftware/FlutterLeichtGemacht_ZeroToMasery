

import 'package:flutter/material.dart';
import 'package:fluttergrundlagen/presentation/counter_app/counter_app_page.dart';
import 'package:fluttergrundlagen/presentation/theme_animation/theme_animation_page.dart';
import 'package:fluttergrundlagen/presentation/widgets_examples/widgets_examples_page.dart';

class RootWidget extends StatefulWidget {
  const RootWidget({ Key? key }) : super(key: key);

  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
        index: _currentIndex,
        children: [
          WidgetsExamplesPage(),
          CounterAppPage(),
          ThemeAnimationPage()
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        backgroundColor: Theme.of(context).appBarTheme.color,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.star), label: "examples"),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: "counter"),
        BottomNavigationBarItem(icon: Icon(Icons.color_lens), label: "theme"),
      ]),
      
    );
  }
}