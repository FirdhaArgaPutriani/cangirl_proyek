import 'package:flutter/material.dart';
import 'package:cangirl_proyek/db/database_provider.dart';
import 'package:cangirl_proyek/model/note_model.dart';

class ShowNote extends StatelessWidget {
  const ShowNote({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NoteModel note =
        ModalRoute.of(context).settings.arguments as NoteModel;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Note"),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              DatabaseProvider.db.deleteNote(note.id);
              Navigator.pushNamedAndRemoveUntil(context, "/", (route) => false);
            },
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          Text(
            note.title,
            style: const TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            note.body,
            style: const TextStyle(fontSize: 18.0),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
}
