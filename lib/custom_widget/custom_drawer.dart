import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomDrawer{
  static drawer() {
    return Drawer(
      elevation: 5,
      backgroundColor: Color.fromARGB(255, 0, 0, 53),
      shadowColor: Colors.greenAccent.shade400,
      child: ListView(
        children: [
          Column(
            children: [
              ListTile(
                leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.home,color: Colors.white,)),
                textColor: Colors.blue.shade800,
                iconColor: Colors.blue.shade800,
                splashColor: Colors.blue,
                title: const Text('Home',style: TextStyle(color: Colors.white),),
                selectedColor: Colors.blue,
                onTap: () {},
              ),
              ListTile(
                leading:   IconButton(
                    onPressed: () {}, icon: const Icon(Icons.shopping_bag,color: Colors.white,)),
                title: const Text('Products',style: TextStyle(color: Colors.white)),
                selectedColor: Colors.blue,
                onTap: () {},
              ),
              ListTile(
                leading: IconButton(
                  icon: Icon(Icons.view_list_outlined,color: Colors.white,),
                  onPressed: (){},
                ),
                title: const Text('Features',style: TextStyle(color: Colors.white)),
                selectedColor: Colors.blue,
                onTap: () {},
              ),
              ListTile(
                leading: IconButton(onPressed: () {}, icon:  Icon(Icons.play_circle_outline,color: Colors.white,)),
                title: const Text('How To Play',style: TextStyle(color: Colors.white)),
                selectedColor: Colors.blue,
                onTap: () {},
              ),
              ListTile(
                leading:  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.build_circle_outlined,color: Colors.white,)),
                title: const Text('Tools',style: TextStyle(color: Colors.white)),
                selectedColor: Colors.blue,
                onTap: () {},
              ),
              ListTile(
                leading:       IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_horiz_outlined,color: Colors.white,)),
                title: const Text('More',style: TextStyle(color: Colors.white)),
                selectedColor: Colors.blue,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}