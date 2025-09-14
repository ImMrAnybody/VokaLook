import 'package:flutter/material.dart';
import 'data/database/database.dart';

class EditButton extends StatefulWidget {
  final Book bookToEdit;
  const EditButton({super.key, required this.bookToEdit});

  @override
  State<EditButton> createState() => _EditButtonState();
}

class _EditButtonState extends State<EditButton> {
  final db = AppDatabase.instance;
  late final TextEditingController _BookNameController;
  late final TextEditingController _BookAuthorController;

  @override
  void initState() {
    super.initState();
    _BookNameController = TextEditingController(text: widget.bookToEdit.title);
    _BookAuthorController = TextEditingController(text: widget.bookToEdit.author);
  }

  void _showEditDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Update The Book'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _BookNameController,
                decoration: const InputDecoration(hintText: 'Book Title'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _BookAuthorController,
                decoration: const InputDecoration(hintText: 'Author Name'),
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
                final isUpdated = await db.updateBook(
                  widget.bookToEdit.id,
                  _BookNameController.text,
                  _BookAuthorController.text,
                );
                
                Navigator.of(context).pop();

                if (isUpdated) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('The book has been successfully updated!'),
                      backgroundColor: Colors.green,
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('The book could not be updated.'),
                      backgroundColor: Colors.red,
                    ),
                  );
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
    _BookNameController.dispose();
    _BookAuthorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: _showEditDialog,
      icon: const Icon(Icons.edit),
    );
  }
}
