import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'database/database.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final database = MyDatabase();
  await database.initializeDefaultSet();

  runApp(Provider(create: (_) => database, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drift Word Set Application',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
      ),
      home: const SetListScreen(),
    );
  }
}


class SetListScreen extends StatefulWidget {
  const SetListScreen({super.key});

  @override
  State<SetListScreen> createState() => _SetListScreenState();
}

class _SetListScreenState extends State<SetListScreen> {
  late final MyDatabase database; 
  late final Stream<List<WordSet>> _setsStream;

  final TextEditingController _setNameController = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    database = Provider.of<MyDatabase>(context);
    _setsStream = database.watchAllSets();
  }

  // Dialog for Creating a New Set
  Future<void> _showCreateSetDialog() async {
    _setNameController.clear();

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Create New Set'),
          content: TextField(
            controller: _setNameController,
            autofocus: true,
            decoration: const InputDecoration(
              labelText: 'Set Name (e.g.: Travel)',
              border: OutlineInputBorder(),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () => Navigator.pop(context),
            ),
            ElevatedButton(
              child: const Text('Create'),
              onPressed: () async {
                final setName = _setNameController.text.trim();
                if (setName.isNotEmpty) {
                  try {
                    await database.createWordSet(
                      name: setName,
                      languagePair: 'EN-TR', // Default language pair for now
                      category: '3131',
                      isUserDefined: true,
                    );
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Set "$setName" successfully added.'),
                      ),
                    );
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('An error occurred: ${e.toString()}'),
                      ),
                    );
                  }
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
    _setNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Word Sets (Reactive)')),
      body: StreamBuilder<List<WordSet>>(
        stream: _setsStream, 
        builder: (context, snapshot) {
          // 1. Waiting and Error Checks
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(
              child: Text(
                'An error occurred: ${snapshot.error}',
                style: const TextStyle(color: Colors.red),
              ),
            );
          }

          final setList = snapshot.data ?? [];

          if (setList.isEmpty) {
            return const Center(
              child: Text(
                'No sets found. Press the + button to create a new set.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            );
          }

          // Data Successfully Retrieved and is Automatically Updating
          return ListView.builder(
            itemCount: setList.length,
            itemBuilder: (context, index) {
              final set = setList[index];
              return Card(
                elevation: 3,
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                child: ListTile(
                  leading: Icon(
                    set.isUserDefined ? Icons.folder_open : Icons.book_rounded,
                    color: set.isUserDefined
                        ? Colors.indigo.shade600
                        : Colors.orange.shade800,
                  ),
                  title: Text(
                    set.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Language Pair: ${set.languagePair} | ${set.isUserDefined ? 'User Defined' : 'Default'}',
                  ),
                  // Will navigate to the word list screen when the Set is tapped
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Navigating to Word List Screen: ${set.name}',
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showCreateSetDialog,
        tooltip: 'Create New Set',
        backgroundColor: Colors.indigo,
        child: const Icon(Icons.add),
      ),
    );
  }
}
