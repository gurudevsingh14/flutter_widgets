import 'package:flutter/material.dart';
class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int result=0;
  int num1=0;
  int num2=0;

  add() {
    setState((){
      result=num1+num2;
      debugPrint('new result = $result');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('ghgh'),
                SizedBox(
                  width: 100,
                  child: TextFormField(
                  onChanged: (value) {
                    //debugPrint('first number = $value');
                    if(value.isNotEmpty) {
                      setState(() {
                        num1 = int.parse(value);
                      });
                    }
                  },
                    //initialValue: 'gurudev',
                    maxLines: 1,
                    minLines: 1,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(

                      labelText: 'First Number',

                      labelStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,

                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 1.0,
                        ),


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
                Icon(Icons.add),
                SizedBox(
                  width: 100,
                  child: TextFormField(
                    onChanged: (value) {
                      //debugPrint('first number = $value');
                      if(value.isNotEmpty) {
                        setState(() {
                          num2 = int.parse(value);
                        });
                      }
                    },
                    //initialValue: 'gurudev',
                    maxLines: 1,
                    minLines: 1,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(

                      labelText: 'Second Number',

                      labelStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,

                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 1.0,
                        ),
                        //borderRadius: BorderRadius.all(Radius.circular(35)),

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
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton  (onPressed: add,
              child: Text('Add',style: TextStyle(color: Colors.white),),
            color: Colors.green,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue)
              ),
              child: Text(result.toString(),style: TextStyle(
                fontSize: 18
              ),),
            )
          ],
        ),
      ),
    );
  }
}
