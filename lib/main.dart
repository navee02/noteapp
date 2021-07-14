import 'package:flutter/material.dart';
import './notespage.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: hi());
  }
}

class hi extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "MY NOTES",
          style: TextStyle(fontSize: 20),
        )),
        backgroundColor: Colors.black12,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 320, top: 600),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => newpage()));
          },
          backgroundColor: Colors.black12,
        ),
      ),
    );
  }
}
