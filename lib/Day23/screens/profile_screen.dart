import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                "https://i.pravatar.cc/150?img=3",
              ),
            ),
            const SizedBox(height: 10,),

            const Text(
              "Ajil",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 33,

              ),

            ),
            const Text(
              "Flutter Developer",
              style: TextStyle(
                color: Colors.green,
              ),
            ),

            const SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const[
                Column(
                  children: [
                    Text("12",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("posts"),
                  ],
                ),
                Column(
                  children: [
                    Text("340",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("Followers"),
                  ],
                ),
                    Column(
                  children: [
                    Text("180", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                    Text("Following")
                  ],
                ),


              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: (){}, child: Text("Edit profile")),
            const SizedBox(height: 20),

        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemCount: 9,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.grey[300],
              );
            },
          ),
        ),  
          ],
        ),
        ),
    );
  }
}
