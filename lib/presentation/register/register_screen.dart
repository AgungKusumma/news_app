import 'package:flutter/material.dart';
import 'package:news_app/presentation/register/register_body_widget.dart';
import 'package:news_app/provider/auth/auth_provider.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final nameC = TextEditingController();
  final emailC = TextEditingController();
  final passwordC = TextEditingController();

  @override
  void dispose() {
    nameC.dispose();
    emailC.dispose();
    passwordC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context);
    final state = auth.state;

    return Scaffold(
      body: RegisterBodyWidget(
        nameC: nameC,
        emailC: emailC,
        passwordC: passwordC,
        auth: auth,
        state: state,
      ),
    );
  }
}
