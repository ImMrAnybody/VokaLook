import 'package:flutter/material.dart';
import 'data/database/database.dart';

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
  String? _booktitle;
  late String _bookname;
 
   @override
  void initState() {
    super.initState();
    _bookname = "The Fire-Eaters";
  _initData();
  }


  Future<void> _initData() async {
  await _addBook();
  await _findBook();
}


  Future<void> _addBook() async {

    final book = await db.findBookByTitle(_bookname);
        if (book != null) {
          setState(() {
            _booktitle = _bookname;
          });
        } 
        else {
          await db.addBook(_bookname, 'David Almond');
          setState(() {});
        }
  }

  Future<void> _findBook() async {
    final book = await db.findBookByTitle(_bookname);
    if (book != null) {
      setState(() {
        _booktitle = book.title;
      });
    } else {
      setState(() {
        _booktitle = 'The book could not be found.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('There is Book Name:'),
            Text(
              '$_booktitle',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
