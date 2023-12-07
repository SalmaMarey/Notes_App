import 'package:flutter/material.dart';
import 'package:notes_app/models/note.dart';
import 'package:notes_app/screens/home.dart';

class Notes extends StatefulWidget {
  const Notes(
      {super.key,
      required String title,
      required String content,
      required DateTime date});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  // ignore: unused_field
  final List<Note> _registerNotes = [
    Note(
      title: 'Cinema',
      content: 'aaaa',
      date: DateTime.now(),
    ),
    Note(
      title: 'Cinema',
      content: 'aaaa',
      date: DateTime.now(),
    ),
    Note(
      title: 'Cinema',
      content: 'aaaa',
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: HomeScreen(
        note: _registerNotes,
      ),
    ));
  }
}
