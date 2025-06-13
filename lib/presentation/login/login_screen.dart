import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/presentation/login/login_body_widget.dart';
import 'package:news_app/provider/auth/auth_provider.dart';
import 'package:news_app/provider/auth/auth_result_state.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailC = TextEditingController();
  final passwordC = TextEditingController();

  @override
  void dispose() {
    emailC.dispose();
    passwordC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();
    final state = auth.state;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (state is AuthSuccessState) {
        context.goNamed('home');
      } else if (state is AuthErrorState) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login failed: ${state.error}')),
        );
      }
    });

    return Scaffold(
      body: LoginBodyWidget(
        emailC: emailC,
        passwordC: passwordC,
        auth: auth,
        state: state,
      ),
    );
  }
}
