import 'package:flutter/material.dart';
import 'package:we_connect/components/wc_button.dart';
import 'package:we_connect/components/wc_text_field.dart';
import 'package:we_connect/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    final emailTextController = TextEditingController();
    final passwordTextController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                Icon(
                  Icons.lock_open_rounded,
                  size: 72,
                  color: Theme.of(context).colorScheme.primary,
                ),
          
                const SizedBox(height: 50,),
            
                // Welcome Text
                Text(
                  "Welcome to WeConnect!",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.primary
                  ),
                ),

                const SizedBox(height: 30,),
            
                // Email Text Field
                WcTextField(
                  controller: emailTextController,
                  hintText: "Enter email...",
                  obsecureText: false,
                ),

                const SizedBox(height: 10,),
            
                // Password Text Field
                WcTextField(
                  controller: passwordTextController,
                  hintText: "Enter password...",
                  obsecureText: true,
                ),

                const SizedBox(height: 10,),

                // Forgot Password Text
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                const SizedBox(height: 30,),

                // Login Button
                WcButton(
                  text: "Login",
                  onTap: () {
                    
                  },
                ),

                const SizedBox(height: 50,),

                // Sign Up Navigation
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary
                      ),
                    ),

                    const SizedBox(width: 5,),

                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const RegisterPage())
                        );
                      },
                      child: const Text(
                        "Register now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      )
                    )

                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}