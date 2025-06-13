import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/provider/auth/auth_provider.dart';
import 'package:news_app/provider/auth/auth_result_state.dart';

class RegisterBodyWidget extends StatelessWidget {
  final TextEditingController nameC;
  final TextEditingController emailC;
  final TextEditingController passwordC;
  final AuthProvider auth;
  final AuthResultState state;

  const RegisterBodyWidget({
    super.key,
    required this.nameC,
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
                  'images/header_register.png',
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
                        controller: nameC,
                        decoration: const InputDecoration(
                          labelText: 'Full Name',
                          hintText: 'Enter your full name here',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(height: 12.0),
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
                      const SizedBox(height: 12.0),
                      TextField(
                        controller: passwordC,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter your password here',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            textStyle:
                                const TextStyle(fontWeight: FontWeight.bold),
                            backgroundColor: Colors.blueAccent,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: state is AuthLoadingState
                              ? null
                              : () async {
                                  FocusScope.of(context)
                                      .unfocus(); // hide keyboard
                                  await auth.register(
                                    nameC.text,
                                    emailC.text,
                                    passwordC.text,
                                  );
                                  if (auth.state is AuthSuccessState) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content:
                                            Text('Registration successful!'),
                                      ),
                                    );
                                    auth.clearState();
                                    context.pop();
                                  } else if (auth.state is AuthErrorState) {
                                    final error =
                                        (auth.state as AuthErrorState).error;
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content:
                                            Text('Registration failed: $error'),
                                      ),
                                    );
                                  }
                                },
                          child: const Text('Register'),
                        ),
                      ),
                      const SizedBox(height: 32.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account? ",
                            style: TextStyle(fontSize: 13),
                          ),
                          InkWell(
                            onTap: () {
                              context.pop();
                            },
                            child: const Text(
                              'Login here',
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
