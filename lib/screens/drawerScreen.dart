import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Screen'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: CustomDrawer(
          
        ),
      ),
      body: Center(
        child: Text('This is a  Drawer Screen'),
      ),
    );
  }
}
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 75,left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('asset/images/dp.jpg'),
            radius: 40,
          )

        ],
      ),
    );
  }
}
