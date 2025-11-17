import 'package:flutter/material.dart';
import 'package:flex_kick/screens/menu.dart';
import 'package:flex_kick/screens/productlist_form.dart';
import 'package:flex_kick/screens/product_entry_list.dart';
import 'package:flex_kick/screens/myproduct_entry_list.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  Text(
                    'Flex Kick',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Text("Seluruh produk terkini di sini!",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.normal),
                      ),
                ],
              ),

          ),

          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Add Product'),
            // Bagian redirection ke ProductFormPage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductFormPage(),
                  ));
            },
          ),

          ListTile(
            leading: const Icon(Icons.shop_2_rounded),
            title: const Text('All Product'),
            // Bagian redirection ke ProductFormPage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductEntryListPage(),
                  ));
            },
          ),

          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text('My Product'),
            // Bagian redirection ke ProductFormPage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyProductEntryListPage(),
                  ));
            },
          ),



        ],
      ),
    );
  }
}