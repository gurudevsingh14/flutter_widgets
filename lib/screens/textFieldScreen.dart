import 'package:flutter/material.dart';
class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Text Field Screen'),
        ),
      body: Center(
        child: SizedBox(
          width: 250,
          child: TextFormField(
            cursorColor: Colors.amber,
            cursorHeight: 30,
             //initialValue: 'gurudev',
            maxLines: 5,
            minLines: 1,
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              hintText: 'name',
              labelText: 'Name',

              labelStyle: TextStyle(
                fontSize: 18,
                color: Colors.blue,
                fontWeight: FontWeight.bold,

              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(Radius.circular(35)),

              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2.0,
                ),
                // borderRadius: BorderRadius.all(Radius.circular(10)),

              ),

            ),

          ),
        ),
      ),
    );
  }
}
