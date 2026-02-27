import 'package:flutter/material.dart';

class FoodPracticeScreen extends StatefulWidget {
  const FoodPracticeScreen({super.key});

  @override
  State<FoodPracticeScreen> createState() => _FoodPracticeScreenState();
}

class _FoodPracticeScreenState extends State<FoodPracticeScreen> {

  List food = [
    {"name": "Burger", "price": "\$8", "image": "https://picsum.photos/200"},
    {"name": "Pizza", "price": "\$12", "image": "https://picsum.photos/201"},
    {"name": "Pasta", "price": "\$10", "image": "https://picsum.photos/202"},
    {"name": "Sandwich", "price": "\$6", "image": "https://picsum.photos/203"},
  ];

  List<bool> isLiked = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food Menu"),
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: food.length,
        itemBuilder: (context, index) {

          return GestureDetector(
            onTap: () => showDetails(index),

            child: Card(
              margin: const EdgeInsets.all(12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),

              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [

                    /// 🍔 IMAGE
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        food[index]["image"],
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(width: 15),

                    /// 📄 NAME + PRICE
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(food[index]["name"],
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),

                          Text(food[index]["price"],
                              style: const TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),

                    /// ❤️ LIKE BUTTON
                    IconButton(
                      icon: Icon(
                        isLiked[index]
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        setState(() {
                          isLiked[index] = !isLiked[index];
                        });
                      },
                    ),

                    /// 🛒 ADD BUTTON
                    IconButton(
                      icon: const Icon(Icons.shopping_cart),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content:
                                Text("${food[index]["name"]} added to cart"),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  /// 🔥 BOTTOM SHEET
  void showDetails(int index) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return Container(
          padding: const EdgeInsets.all(20),
          height: 300,
          child: Column(
            children: [
              Image.network(food[index]["image"], height: 120),
              const SizedBox(height: 15),
              Text(food[index]["name"],
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold)),
              Text(food[index]["price"]),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Order Now"),
              )
            ],
          ),
        );
      },
    );
  }
}