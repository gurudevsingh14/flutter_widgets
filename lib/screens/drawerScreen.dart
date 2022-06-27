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
      padding: EdgeInsets.only(top: 75,left: 0),
      child: Column(
        children: [
          Container(
            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/images/dp.jpg'),
                  radius: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text('Gurudev Singh',
                      style: TextStyle(fontFamily: '',
                          fontSize: 20,
                          fontWeight: FontWeight.bold)
                  ),
                ),
                Container(
                  // color: Colors.red,
                  padding: EdgeInsets.only(top: 3),
                  width: 260,
                  child: Stack(
                    children: [
                      Text(
                        'gurudev620.gs@gmail.com',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Positioned(
                          right: 0,
                          child:
                          Icon(Icons.arrow_drop_down,color: Colors.grey,)
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),

    );
  }
}
