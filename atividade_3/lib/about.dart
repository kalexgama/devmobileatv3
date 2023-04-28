import 'package:flutter/material.dart';
import 'livro.dart';
import 'home.dart';

class About extends StatelessWidget {
  final Livro livro;

  const About({super.key, required this.livro});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 33, 137, 208),
      appBar: AppBar(
        title: Text(livro.titulo),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(2.0)),
                child: Image(
                  image: livro.img.image,
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(children: [
                    const Icon(Icons.person_2,
                        color: Color.fromARGB(255, 14, 31, 61)),
                    SizedBox(width: 5),
                    Text(
                      'Autor: ${livro.autor}',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ])),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '${livro.resumo}',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(children: [
                    const Icon(Icons.list,
                        color: Color.fromARGB(255, 14, 31, 61)),
                    SizedBox(width: 5),
                    Text(
                      '${livro.numeroCapitulos} Capítulos',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ])),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
            margin: EdgeInsets.only(top: 100),
            child: ListView(
              children: [
                SizedBox(
                    height: 100,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            fixedSize: const Size(400, 20)),
                        child: const Row(children: [
                          Icon(Icons.home,
                              color: Color.fromARGB(255, 14, 31, 61)),
                          Text(
                            "Menu Principal",
                            style: TextStyle(fontSize: 18),
                          )
                        ]))),
              ],
            )),
      ),
    );
  }
}
