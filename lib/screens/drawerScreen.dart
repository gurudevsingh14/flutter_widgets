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
  //custom tile
  CustomTile(Icon icon,String text,int index){
    return InkWell(
      onTap: (){
        setState((){
          selectedIndex=index;
        });
      },
      child: Container(
          margin: EdgeInsets.only(bottom: 5),
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            color: selectedIndex==index? Colors.blueAccent.withOpacity(0.1):Colors.transparent,
            borderRadius: BorderRadius.circular(5),
          ),
          width: 300,
          height: 45,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              icon,
              SizedBox(
                width: 30,
              ),
              Text(
                text,
                style: TextStyle(color: selectedIndex==index?Colors.blueAccent:Colors.black,fontWeight: FontWeight.w500,fontSize: 16),
              )
            ],
          )
      ),
    );
  }
  int selectedIndex=-1;
  String email='gurudev620.gs@gmail.com';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 75),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            // color: Colors.red,
            padding: EdgeInsets.only(left: 15,right: 15,bottom: 8),
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
                DropdownButtonFormField<String>(
                  // value: dropdownValue,
                  value: email,
                  style: TextStyle(color: Colors.grey),
                  decoration: InputDecoration(
                    isCollapsed: true,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                  icon: Icon(Icons.arrow_drop_down,color: Colors.grey),
                  onChanged: (newValue) {
                    setState(() {
                      email=newValue!;
                    });
                  },
                  items: <String>[
                    'gurudev620.gs@gmail.com','gurudev2001@hotmail.com','gurudev123@gmail.com'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                      enabled: true,
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.8,
            color: Colors.grey,
          ),
          Padding(
              padding: EdgeInsets.only(top: 5,left:10,right: 10,bottom: 5),
              child: Column(
                children: [
                  CustomTile(Icon(
                    Icons.folder,color: selectedIndex==0?Colors.blueAccent:Colors.black,size: 26,
                  ), 'My Files',0),
                  CustomTile(Icon(
                    Icons.people ,color: selectedIndex==1?Colors.blueAccent:Colors.black,size: 26,
                  ), 'Share with me',1),
                  CustomTile(Icon(
                    Icons.star,color: selectedIndex==2?Colors.blueAccent:Colors.black,size: 26,
                  ), 'Starred',2),
                  CustomTile(Icon(
                    Icons.watch_later_outlined,color: selectedIndex==3?Colors.blueAccent:Colors.black,size: 26,
                  ), 'Recent',3),
                  CustomTile(Icon(
                    Icons.offline_pin,color: selectedIndex==4?Colors.blueAccent:Colors.black,size: 26,
                  ), 'Offline',4),
                  CustomTile(Icon(
                    Icons.upload ,color: selectedIndex==5?Colors.blueAccent:Colors.black,size: 26,
                  ), 'Uploads',5),
                  CustomTile(Icon(
                    Icons.backup,color: selectedIndex==6?Colors.blueAccent:Colors.black,size: 26,
                  ), 'Backups',6),
                  CustomTile(Icon(
                    Icons.delete,color: selectedIndex==7?Colors.blueAccent:Colors.black,size: 26,
                  ), 'Thrash',7),
                ],
              ),
          )
        ],
      ),

    );
  }
}




