import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:state_getx/second.dart';

void main()
{
  runApp(MaterialApp(home: first(),));
}

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();

  second c=Get.put(second());

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      
      appBar: AppBar(),
      
      body: Column(
        children: [
          
          TextField(
            controller: t1,

            decoration: InputDecoration(
                label: Text("Enter Number")
            ),
          ),
          
          TextField(
            controller: t2,
            
            decoration: InputDecoration(
              label: Text("Enter Number")
            ),
          ),
          
          ElevatedButton(onPressed: () {
            
            c.fun_sum(t1.text, t2.text);
            
          }, child: Text("Submit")),
          
          Obx(() => Text("Sum :- ${c.sum}"))
        ],
      ),
    );
  }
}
