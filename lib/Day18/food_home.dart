import 'package:flutter/material.dart';

class FoodHome extends StatelessWidget {
  const FoodHome({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food Home"),
      ),
      body:Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "hello ajil",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12,),
            const Text("What you want to eat?"),
            const SizedBox(height: 21,),

            TextField(
              decoration: InputDecoration(
                hintText: "Enter food",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                )
              ),
            ),
            const SizedBox(height: 20,),

            const Text(
              "popular foods",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w200,
              ),
            )
          ],
        ),
        ) ,
    );
  }
}
