import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(new Home());
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Image img = Image.asset('assets/leroliro.jpg');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textTheme: const TextTheme(
                bodyMedium: TextStyle(
                    fontFamily: "Roboto", fontSize: 17, color: Colors.white))),
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 33, 137, 208),
//-------------------------------------------------------------------- Appbar

            appBar: AppBar(
                title: const Text(
                  "Biblioteca Virtual",
                  style: TextStyle(fontSize: 25),
                ),
                foregroundColor: Colors.white,
                backgroundColor: Colors.lightBlue,
                centerTitle: true,
                bottom:
                    const TabBar(tabs: [Text("Meus Livros"), Text("Loja")])),

//-------------------------------------------------------------------- Body
            body: TabBarView(children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(15),
                    child: Column(
//-------------------------------------------------------------------- Imagem
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(2.0)),
                          child: Image(
                            image: img.image,
                            height: MediaQuery.of(context).size.height * 0.5,
                            width: MediaQuery.of(context).size.width * 0.5,
                          ),
                        ),
//-------------------------------------------------------------------- Texto
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    " - Meus Livros - ",
                                    style: TextStyle(fontSize: 24),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
//-------------------------------------------------------------------- livros
                        Container(
                          margin: const EdgeInsets.all(15),
                          child: Column(
                            children: [
// ------------------------------------------------------------------- Livro
                              SizedBox(
                                  height: 100,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          foregroundColor: Colors.black,
                                          fixedSize: const Size(400, 20)),
                                      child: const Row(children: [
                                        Icon(Icons.book,
                                            color: Color.fromARGB(
                                                255, 14, 31, 61)),
                                        Text(
                                          "Como treinar o seu dragão",
                                          style: TextStyle(fontSize: 18),
                                        )
                                      ]))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(children: <Widget>[
                Container(
                    margin: const EdgeInsets.all(30),
                    child: const Text(
                        "Aqui você compraria livros se tivesse algum dinheiro '-' ",
                        style: TextStyle(fontSize: 20, color: Colors.white))),
              ])
            ]),
            drawer: Drawer(
              child: Container(
                  margin: EdgeInsets.only(top: 100),
                  child: ListView(
                    children: [
                      SizedBox(
                          height: 100,
                          child: ElevatedButton(
                              onPressed: () {},
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
                      SizedBox(
                          height: 100,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  fixedSize: const Size(400, 20)),
                              child: const Row(children: [
                                Icon(Icons.store,
                                    color: Color.fromARGB(255, 14, 31, 61)),
                                Text(
                                  "Loja",
                                  style: TextStyle(fontSize: 18),
                                )
                              ]))),
                      SizedBox(
                          height: 100,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  fixedSize: const Size(400, 20)),
                              child: const Row(children: [
                                Icon(Icons.question_mark,
                                    color: Color.fromARGB(255, 14, 31, 61)),
                                Text(
                                  " ? ? ?",
                                  style: TextStyle(fontSize: 18),
                                )
                              ]))),
                    ],
                  )),
            ),
          ),
        ));
  }
}
