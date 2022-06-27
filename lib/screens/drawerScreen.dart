import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
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
//
class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  String email='gurudev620.gs@gmail.com';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 75,left: 0),
      child: Column(
        children: [
          Container(
            // color: Colors.red,
            width: 260,
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
                SizedBox(
                  // color: Colors.red,
                  // padding: EdgeInsets.only(top: 3),
                  // width: 260,
                  child: DropdownButtonFormField<String>(
                    // value: dropdownValue,
                    value: email,
                    style: TextStyle(color: Colors.grey),
                    decoration: InputDecoration(
                      isCollapsed: true,
                      enabledBorder: InputBorder.none,
                    ),
                    icon: Icon(Icons.arrow_drop_down,color: Colors.grey),
                    onChanged: (newValue) {
                      setState(() {
                        email=newValue!;
                      });
                    },
                    items: <String>[
                      'gurudev620.gs@gmail.com','gurudev2001@hotmail.com','gurudev123@gmail.com','one'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
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

