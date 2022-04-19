import 'package:flutter/material.dart';
import 'package:cangirl_proyek/db/database_provider.dart';
import 'package:cangirl_proyek/model/note_model.dart';

class AddNote extends StatefulWidget {
  const AddNote({Key key}) : super(key: key);

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  String title;
  String body;
  DateTime date;

  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();

  addNote(NoteModel note) {
    DatabaseProvider.db.addNewNote(note);
    print("Note Added Succesfully");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add new Note"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        child: Column(children: [
          TextField(
            controller: titleController,
            decoration: const InputDecoration(
                border: InputBorder.none, hintText: "Note Title"),
            style: const TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
          ),
          Expanded(
              child: TextField(
            controller: bodyController,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: const InputDecoration(
                border: InputBorder.none, hintText: "Your Note"),
          ))
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            title = titleController.text;
            body = bodyController.text;
            date = DateTime.now();
          });
          NoteModel note =
              NoteModel(title: title, body: body, creation_date: date);
          addNote(note);

          Navigator.pushNamed(context, "/", arguments: (route) => false);
        },
        label: Text("Save"),
        icon: Icon(Icons.save),
      ),
    );
  }
}
