import 'package:flutter/material.dart';
import 'data/database/database.dart';
import 'addbutton.dart';
import 'editbutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Database Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Drift Database Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final db = AppDatabase.instance;

  @override
  void initState() {
    super.initState();
  }

  Future<void> _initData() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: StreamBuilder<List<Book>>(
        stream: db.getAllBooks(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('An error occurred: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('There are no books yet.'));
          } else {
            final books = snapshot.data!;
            return ListView.builder(
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index];
                return ListTile(
                  title: Text(book.title),
                  subtitle: Text(book.author),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(book.publicationDate?.year.toString() ?? 'No Date'),
                      EditButton(bookToEdit: book),

                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () async {
                          final deletedRowCount = await db.deleteBook(book.id);
                          if (deletedRowCount > 0) {
                            print('The book has been successfully deleted.');
                          } else {
                            print('No book to delete was found.');
                          }
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: const AddButton(),
    );
  }
}
