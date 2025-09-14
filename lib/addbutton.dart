import 'package:flutter/material.dart';
import 'data/database/database.dart';
import 'package:flutter/services.dart';

class AddButton extends StatefulWidget {
  const AddButton({super.key});

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  final db = AppDatabase.instance;
  final _BookNameController = TextEditingController();
  final _BookAuthorController = TextEditingController();
  void _showAddDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add a new book'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _BookNameController,
                decoration: const InputDecoration(hintText: 'Enter Book Title'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _BookAuthorController,
                decoration: const InputDecoration(
                  hintText: 'Enter Author Name',
                ),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            ElevatedButton(
              child: const Text('Save'),
              onPressed: () async {
                String bookname = _BookNameController.text;
                String authorname = _BookAuthorController.text;
                final book = await db.findBookByTitle(bookname);
                if (book != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('This book is already attached!'),
                      backgroundColor: Colors.red,
                      duration: Duration(seconds: 2),
                    ),
                  );
                } else {
                  await db.addBook(bookname, authorname);
                  Navigator.of(context).pop();
                  _BookAuthorController.clear();
                  _BookNameController.clear();
                  //setState(() {});
                }
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _BookAuthorController.dispose();
    _BookNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        HapticFeedback.lightImpact();
        _showAddDialog();
      },
      child: const Icon(Icons.add),
    );
  }
}
