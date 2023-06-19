import 'package:flutter/material.dart';

import 'connectivity_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Olá novamente!',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              const Text('Bem vindo de volta, sentimos a sua falta!',
                  style: TextStyle(fontSize: 16.0)),
              Padding(
                padding: const EdgeInsets.only(top: 48.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(
                        16.0,
                      ),
                    ),
                    filled: true,
                    fillColor: const Color(0XFFF5F5F5),
                    icon: const Icon(
                      Icons.person,
                      color: Colors.deepPurple,
                    ),
                    labelText: 'Usuário',
                    labelStyle: const TextStyle(color: Colors.deepPurple),
                    hintText: 'Insira um nome de usuário',
                    hintStyle: const TextStyle(color: Colors.deepPurple),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 48.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(
                        16.0,
                      ),
                    ),
                    filled: true,
                    fillColor: const Color(0XFFF5F5F5),
                    icon: const Icon(
                      Icons.password,
                      color: Colors.deepPurple,
                    ),
                    labelText: 'Senha',
                    labelStyle: const TextStyle(color: Colors.deepPurple),
                    hintText: 'Insira a senha',
                    hintStyle: const TextStyle(color: Colors.deepPurple),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ConnectivityPage(),
                    ),
                  );
                },
                child: const CustomButton(isValid: true),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.isValid,
  });

  final bool isValid;

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 50,
      width: 400,
      decoration: BoxDecoration(
        color: isValid ? Colors.deepPurple : Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          'Entrar',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
