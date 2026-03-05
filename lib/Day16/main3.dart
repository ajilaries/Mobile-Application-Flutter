import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotesScreen(),
    );
  }
}

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {

  TextEditingController noteController = TextEditingController();

  List<String> notes = [];

  void addNote() {
    if (noteController.text.isNotEmpty) {
      setState(() {
        notes.add(noteController.text);
        noteController.clear();
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Note Added")),
      );
    }
  }

  void deleteNote(int index) {
    setState(() {
      notes.removeAt(index);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Note Deleted")),
    );
  }

  void showAddNoteDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Add Note"),
          content: TextField(
            controller: noteController,
            decoration: const InputDecoration(
              hintText: "Enter your note",
            ),
          ),
          actions: [

            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),

            ElevatedButton(
              onPressed: () {
                addNote();
                Navigator.pop(context);
              },
              child: const Text("Add"),
            ),

          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Notes App"),
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: showAddNoteDialog,
        child: const Icon(Icons.add),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: notes.isEmpty
            ? const Center(
                child: Text(
                  "No Notes Yet",
                  style: TextStyle(fontSize: 20),
                ),
              )
            : ListView.builder(
                itemCount: notes.length,

                itemBuilder: (context, index) {

                  return Card(
                    child: ListTile(

                      title: Text(notes[index]),

                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          deleteNote(index);
                        },
                      ),

                    ),
                  );

                },
              ),
      ),
    );
  }
}