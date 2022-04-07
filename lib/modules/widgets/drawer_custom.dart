import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomDrawer extends StatelessWidget implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Marcas'),
            onTap: () {
              Modular.to.navigate('/brand');
            },
          ),
          ListTile(
            title: const Text('Produtos'),
            onTap: () {
              Modular.to.navigate('/');
            },
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  get preferredSize => throw UnimplementedError();
}