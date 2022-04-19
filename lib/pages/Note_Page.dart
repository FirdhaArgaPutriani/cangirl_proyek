import 'package:flutter/material.dart';

import 'package:cangirl_proyek/model/note_model.dart';
import 'package:cangirl_proyek/db/database_provider.dart';
import 'package:cangirl_proyek/screens/add_note.dart';
import 'package:cangirl_proyek/screens/display_note.dart';

const MaterialColor pink = MaterialColor(
  0xFFFF9DEF,
  <int, Color>{
    50: Color(0xFFFF9DEF),
    100: Color(0xFFFF9DEF),
    200: Color(0xFFFF9DEF),
    300: Color(0xFFFF9DEF),
    400: Color(0xFFFF9DEF),
    500: Color(0xFFFF9DEF),
    600: Color(0xFFFF9DEF),
    700: Color(0xFFFF9DEF),
    800: Color(0xFFFF9DEF),
    900: Color(0xFFFF9DEF),
  },
);

class NotePage extends StatelessWidget {
  const NotePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const Note(),
        "/AddNote": (context) => const AddNote(),
        "/ShowNote": (context) => const ShowNote(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: pink,
      ),
    );
  }
}

class Note extends StatefulWidget {
  const Note({Key key}) : super(key: key);

  @override
  State<Note> createState() => _NoteState();
}

class _NoteState extends State<Note> {
  getNotes() async {
    final notes = await DatabaseProvider.db.getNotes();
    return notes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Note",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/images/logo1.png'),
            //Menangani kejadian saat menu Call diklik
            onPressed: () {
              //FlutterToast.showToast("Panggilan Telepon");
            },
          )
        ],
      ),
      body: FutureBuilder(
        future: getNotes(),
        // ignore: missing_return
        builder: (context, noteData) {
          switch (noteData.connectionState) {
            case ConnectionState.waiting:
              {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              break;
            case ConnectionState.done:
              {
                if (noteData.data == Null) {
                  return Stack(
                    children: <Widget>[
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 10,
                            right: 10,
                          ),
                          child: Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              // ignore: prefer_const_constructors
                              Container(
                                child: const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Mood",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xFFFF9DEF),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      'assets/emoji/Group.png',
                                    ),
                                  ),
                                  Container(
                                    child: Image.asset(
                                      'assets/emoji/Group-1.png',
                                    ),
                                  ),
                                  Container(
                                    child: Image.asset(
                                      'assets/emoji/Group-3.png',
                                    ),
                                  ),
                                  Container(
                                    child: Image.asset(
                                      'assets/emoji/Vector.png',
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      'assets/emoji/Vector-1.png',
                                    ),
                                  ),
                                  Container(
                                    child: Image.asset(
                                      'assets/emoji/Group-2.png',
                                    ),
                                  ),
                                  Container(
                                    child: Image.asset(
                                      'assets/emoji/Group-4.png',
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 50.0,
                              ),
                              const Center(
                                child: Text(
                                  "Note",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFFFF9DEF),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 180.0,
                              ),
                              const Text(
                                "You don't have any notes yet, create one",
                                style: TextStyle(
                                  color: Color(0xFFFF9DEF),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      itemCount: noteData.data.length,
                      itemBuilder: (context, index) {
                        String title = noteData.data[index]['title'];
                        String body = noteData.data[index]['body'];
                        String creation_date =
                            noteData.data[index]['creation_date'];
                        int id = noteData.data[index]['id'];
                        return Card(
                          child: SafeArea(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 10,
                                right: 10,
                              ),
                              child: Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <Widget>[
                                  // ignore: prefer_const_constructors
                                  Container(
                                    child: const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Mood",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xFFFF9DEF),
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                        child: Image.asset(
                                          'assets/emoji/Group.png',
                                        ),
                                      ),
                                      Container(
                                        child: Image.asset(
                                          'assets/emoji/Group-1.png',
                                        ),
                                      ),
                                      Container(
                                        child: Image.asset(
                                          'assets/emoji/Group-3.png',
                                        ),
                                      ),
                                      Container(
                                        child: Image.asset(
                                          'assets/emoji/Vector.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                        child: Image.asset(
                                          'assets/emoji/Vector-1.png',
                                        ),
                                      ),
                                      Container(
                                        child: Image.asset(
                                          'assets/emoji/Group-2.png',
                                        ),
                                      ),
                                      Container(
                                        child: Image.asset(
                                          'assets/emoji/Group-4.png',
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 25.0,
                                  ),
                                  const Center(
                                    child: Text(
                                      "Note",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xFFFF9DEF),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15.0,
                                  ),
                                  ListTile(
                                    onTap: () {
                                      Navigator.pushNamed(
                                        context,
                                        "/ShowNote",
                                        arguments: NoteModel(
                                          title: title,
                                          body: body,
                                          creation_date:
                                              DateTime.parse(creation_date),
                                          id: id,
                                        ),
                                      );
                                    },
                                    title: Text(title),
                                    subtitle: Text(body),
                                    tileColor: const Color(0xFFFF9DEF),
                                  ),
                                  const SizedBox(
                                    height: 15.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }
              }
              break;
            case ConnectionState.none:
              // TODO: Handle this case.
              break;
            case ConnectionState.active:
              // TODO: Handle this case.
              break;
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/AddNote");
        },
        child: Icon(Icons.note_add),
      ),
    );
  }
}
