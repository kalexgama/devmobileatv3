import 'package:aula3/about.dart';
import 'package:flutter/material.dart';
import 'livro.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Image img = Image.asset('assets/leroliro.jpg');
  Image img2 = Image.asset('assets/wait.jpg');
  var livros = [
    Livro(
        titulo: 'O Senhor dos Anéis',
        autor: 'J.R.R. Tolkien',
        resumo:
            '"Senhor dos Anéis" é uma trilogia de fantasia escrita por J.R.R. Tolkien, que segue a jornada de hobbits e outras criaturas em busca de destruir um anel que pode trazer a destruição do mundo.',
        numeroCapitulos: 24,
        img: Image.asset('assets/rings.jpg')),
    Livro(
        titulo: 'Harry Potter e a Pedra Filosofal',
        autor: 'J.K. Rowling',
        resumo:
            '"Harry Potter e a Pedra Filosofal" é o primeiro livro da série Harry Potter, escrita por J.K. Rowling, que narra a história de um jovem bruxo que descobre seus poderes mágicos e começa sua jornada no mundo da magia.',
        numeroCapitulos: 17,
        img: Image.asset('assets/harry.jpg')),
    Livro(
        titulo: '1984',
        autor: 'George Orwell',
        resumo:
            '"1984" é um romance distópico escrito por George Orwell, que retrata um futuro sombrio e controlado pelo governo totalitário',
        numeroCapitulos: 23,
        img: Image.asset('assets/1984.jpg')),
  ];

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
          child: Builder(builder: (context) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
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
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.all(15),
                            child: Column(
                              //-------------------------------------------------------------------- Imagem
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(2.0)),
                                  child: Image(
                                    image: img.image,
                                    height: MediaQuery.of(context).size.height *
                                        0.5,
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
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
                                      Container(
                                          margin: const EdgeInsets.all(5),
                                          height: 100,
                                          child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => Builder(
                                                          builder: (context) =>
                                                              About(
                                                                  livro: livros[
                                                                      0]))),
                                                );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.white,
                                                  foregroundColor: Colors.black,
                                                  fixedSize:
                                                      const Size(400, 20)),
                                              child: Row(children: [
                                                const Icon(Icons.book,
                                                    color: Color.fromARGB(
                                                        255, 14, 31, 61)),
                                                Text(
                                                  (livros[0].titulo),
                                                  style: const TextStyle(
                                                      fontSize: 18),
                                                )
                                              ]))),
                                      // ------------------------------------------------------------------- Livro

                                      Container(
                                          margin: const EdgeInsets.all(5),
                                          height: 100,
                                          child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => Builder(
                                                          builder: (context) =>
                                                              About(
                                                                  livro: livros[
                                                                      1]))),
                                                );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.white,
                                                  foregroundColor: Colors.black,
                                                  fixedSize:
                                                      const Size(400, 20)),
                                              child: Row(children: [
                                                const Icon(Icons.book,
                                                    color: Color.fromARGB(
                                                        255, 14, 31, 61)),
                                                Text(
                                                  (livros[1].titulo),
                                                  style: const TextStyle(
                                                      fontSize: 18),
                                                )
                                              ]))),
                                      // ------------------------------------------------------------------- Livro
                                      Container(
                                          margin: const EdgeInsets.all(5),
                                          height: 100,
                                          child: ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => Builder(
                                                          builder: (context) =>
                                                              About(
                                                                  livro: livros[
                                                                      2]))),
                                                );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.white,
                                                  foregroundColor: Colors.black,
                                                  fixedSize:
                                                      const Size(400, 20)),
                                              child: Row(children: [
                                                const Icon(Icons.book,
                                                    color: Color.fromARGB(
                                                        255, 14, 31, 61)),
                                                Text(
                                                  (livros[2].titulo),
                                                  style: const TextStyle(
                                                      fontSize: 18),
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
                    ],
                  ),
                ),
                Column(children: <Widget>[
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(2.0)),
                    child: Image(
                      image: img2.image,
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.all(30),
                      child: const Text(
                          "A loja de livros está fechada. Abriremos amanhã. - Obrigado pela compreensão",
                          style: TextStyle(fontSize: 20, color: Colors.white))),
                ])
              ]),
              drawer: Drawer(
                child: Container(
                    margin: EdgeInsets.only(top: 100),
                    child: ListView(
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
                        SizedBox(
                            height: 100,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()),
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
          }),
        ));
  }
}
