import 'package:flutter/material.dart';
import 'package:we_connect/components/wc_button.dart';
import 'package:we_connect/components/wc_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {

    final usernameTextController = TextEditingController();
    final emailTextController = TextEditingController();
    final passwordTextController = TextEditingController();
    final confirmpasswordTextController = TextEditingController();

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
                  "Let's create an account for you!",
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.primary
                  ),
                ),

                const SizedBox(height: 30,),

                // Email Text Field
                WcTextField(
                  controller: emailTextController,
                  hintText: "Enter username...",
                  obsecureText: false,
                ),

                const SizedBox(height: 10,),
            
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

                // Email Text Field
                WcTextField(
                  controller: emailTextController,
                  hintText: "Confirm password...",
                  obsecureText: false,
                ),

                const SizedBox(height: 30,),

                // Login Button
                WcButton(
                  text: "Register",
                  onTap: () {
                    
                  },
                ),

                const SizedBox(height: 50,),

                // Sign Up Navigation
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary
                      ),
                    ),

                    const SizedBox(width: 5,),

                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        "Login now",
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