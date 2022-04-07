import 'package:flutter/material.dart';
import 'package:projeto_dashboard/modules/widgets/drawer_custom.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      drawer: CustomDrawer(),
    );
  }
}