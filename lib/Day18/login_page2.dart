import 'package:flutter/material.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              const Text(
                "Welcome back",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12,),
              TextField(
                decoration: InputDecoration(
                  labelText: "enter email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),

                  ),
                ),
              ),

              const SizedBox(height: 12,),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Enter password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
                ),
              ),
              const SizedBox(height: 23,),

              ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15)
              ),
              child: const Text("Login")),
              const SizedBox(height: 14,),
              const Text(
                "Forgot password",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
