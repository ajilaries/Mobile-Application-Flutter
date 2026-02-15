import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StatelessCounter extends StatelessWidget {
  int count = 0;

  StatelessCounter({super.key});

  @override
  Widget build(BuildContext context){
    print("Stateless build called");

    return Column(
      children: [
        const Text("Stateless Counter", style:TextStyle(fontSize: 18)),
        ElevatedButton(
          onPressed: (){
            count++;
            print("Value of count:$count");
          }, 
          child: const Text("Increment counter"),
          )
      ],
      );
  }
}
