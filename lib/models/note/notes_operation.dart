import 'package:flutter/cupertino.dart';
import 'package:task_manager/models/note/note.dart';

class NotesOperation with ChangeNotifier {
  //List of note

  List<Note> _notes = [];

  List<Note> get getNotes {
    return _notes;
  }

  NotesOperation() {
    addNewNote('First Tittle', 'First Description');
  }

  void addNewNote(String title, String description) {
    //Note object
    Note note = Note(title, description);
    _notes.add(note);
    notifyListeners();
  }

  void deleteNote(String title) {
    _notes.removeWhere((element) => element.title == title);
    notifyListeners();
  }
}
