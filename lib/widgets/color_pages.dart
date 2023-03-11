import 'package:flutter/material.dart';

class ColorPages extends StatelessWidget {
  final String color;
  final String name;

  const ColorPages(this.color, this.name, {super.key});

  @override
  Widget build(BuildContext context) {

    void triggerDialog() {
      showDialog(
        context: context,
        builder: (BuildContext _) {
          return AlertDialog(
            title: const Text('Confirmação'),
            content: const Text(
              'Você tem certeza que deseja voltar à página inicial ?',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.popUntil(
                          context, ModalRoute.withName('/')
                        );
                      },
                      child: const Text('Confirmar')
                  ),
                  TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.red
                      ),
                      child: const Text('Cancelar'),
                  ),
                ],
              ),
            ],
          );
        }
      );
    }

    return Scaffold(
      backgroundColor: Color(int.parse(color)),
      appBar: AppBar(
        flexibleSpace: Align(
          alignment: Alignment.bottomLeft,
          heightFactor: 1.6,
          child: IconButton(
              onPressed: triggerDialog,
              icon: const Icon(Icons.arrow_back_outlined)
          ),
        ),
        backgroundColor: Colors.purple[100],
        foregroundColor: Colors.black,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(name),
         ),
      body: Center(
        child: Image.asset('assets/images/tita.png'),
      ),
    );
  }
}