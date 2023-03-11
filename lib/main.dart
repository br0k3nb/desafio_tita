import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import './routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (
      MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: "Desafio TiTa",
        routeInformationParser: routes.routeInformationParser,
        routeInformationProvider: routes.routeInformationProvider,
        routerDelegate: routes.routerDelegate,
      )
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        foregroundColor: Colors.black,
        title: const Align(
          alignment: Alignment.center,
          child: Text("TiTa Therapy"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => context.push(
                      '/color/${'Azul'}/${'0xffbbdefb'}'
                  ),
                  child: const Text("Azul"),
                ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.push(
                    '/color/${'Vermelho'}/${'0xffffcdd2'}'
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink
                ),
                child: const Text("Vermelho"),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.push(
                    '/color/${'Amarelo'}/${'0xffffecb3'}'
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.black
                ),
                child: const Text("Amarelo"),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => context.push(
                    '/color/${'Verde'}/${'0xffc8e6c9'}'
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green
                ),
                child: const Text("Verde"),
              ),
            ),
          ],
        )
      )// body: ,
    );
  }
}