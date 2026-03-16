import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {

  String quote = "Press the button to get the quote";
  String author = "";

Future<void> fetchQuote() async {
  try {

    final url = Uri.parse("https://zenquotes.io/api/random");

    final response = await http.get(url);

    if (response.statusCode == 200) {

      final data = jsonDecode(response.body);

      setState(() {
        quote = data[0]["q"];
        author = data[0]["a"];
      });

    }

  } catch (e) {
    print("Error occurred: $e");
  }
}
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Quote Generator"),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                quote,
                style: const TextStyle(
                  fontSize: 22,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              Text(
                "- $author",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: fetchQuote,
                child: const Text("Get Quote"),
              )

            ],
          ),
        ),
      ),
    );
  }
}