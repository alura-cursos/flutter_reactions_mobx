import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

import '../stores/connectivity_store.dart';


class ConnectivityPage extends StatelessWidget {
  ConnectivityPage({super.key});
  final connectivityStore = ConnectivityStore();

  @override
  Widget build(BuildContext context) {
    return ReactionBuilder(
      builder: (context) {
        return reaction(
          (_) => connectivityStore.connectivityStream.value,
          (result) {
            final messenger = ScaffoldMessenger.of(context);
            messenger.showSnackBar(
              SnackBar(
                backgroundColor: Colors.deepPurple,
                content: Text(
                  result == ConnectivityResult.none
                      ? 'Você está sem internet!'
                      : 'Você está conectado!',
                ),
              ),
            );
          },
          delay: 1000,
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Teste de Conexão',
            style: TextStyle(
                color: Colors.deepPurple, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.logout_outlined,
              color: Colors.deepPurple,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(),
      ),
    );
  }
}
