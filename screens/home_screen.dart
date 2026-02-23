import 'package:flutter/material.dart';
import '../widgets/food_card.dart';
import '../widgets/category_chip.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [

            const Text(
              "Deliver to",
              style: TextStyle(color: Colors.grey),
            ),

            const Text(
              "Kochi, Kerala 📍",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            TextField(
              decoration: InputDecoration(
                hintText: "Search food...",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              height: 45,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryChip(label: "Pizza"),
                  CategoryChip(label: "Burger"),
                  CategoryChip(label: "Drinks"),
                  CategoryChip(label: "Dessert"),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Popular",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const FoodCard(
              title: "Pepperoni Pizza",
              imageUrl:
                  "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38",
            ),

            const FoodCard(
              title: "Cheese Burger",
              imageUrl:
                  "https://images.unsplash.com/photo-1550547660-d9450f859349",
            ),
          ],
        ),
      ),
    );
  }
}