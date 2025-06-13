import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/provider/auth/auth_provider.dart';
import 'package:news_app/provider/auth/auth_result_state.dart';

class LoginBodyWidget extends StatelessWidget {
  final TextEditingController emailC;
  final TextEditingController passwordC;
  final AuthProvider auth;
  final AuthResultState state;

  const LoginBodyWidget({
    super.key,
    required this.emailC,
    required this.passwordC,
    required this.auth,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'images/header_login.png',
                  width: double.infinity,
                  height: screenHeight * 0.3,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: emailC,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter your email here',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(height: 16.0),
                      TextField(
                        controller: passwordC,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter your password here',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            FocusScope.of(context).unfocus();
                            auth.login(emailC.text, passwordC.text);
                          },
                          child: const Text('Login'),
                        ),
                      ),
                      const SizedBox(height: 32.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account? ",
                            style: TextStyle(fontSize: 13),
                          ),
                          InkWell(
                            onTap: () {
                              context.pushNamed('register');
                            },
                            child: const Text(
                              'Register here',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 13,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (state is AuthLoadingState)
            Container(
              color: Colors.black.withOpacity(0.3),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}
