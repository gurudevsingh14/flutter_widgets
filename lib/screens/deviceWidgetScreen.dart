import 'package:flutter/material.dart';
    class DeviceWidgetScreen extends StatelessWidget {
      const DeviceWidgetScreen({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orangeAccent,
            title: Text('Stack Widget Screen'),
            centerTitle: true,
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(

                  height: 100,
                  width: 150,
                  color: Colors.green,
                ),
                Positioned(
                  // bottom: 200,
                  // left: 200,
                  top: MediaQuery.of(context).size.height*0.297,
                  child: Container(
                    height: 50,
                    width:100,
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
        );
      }
    }
