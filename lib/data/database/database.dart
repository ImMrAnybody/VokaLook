import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

class Books extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1, max: 200)();
  TextColumn get author => text().withLength(min: 1, max: 200)();
  DateTimeColumn get publicationDate => dateTime().nullable()();
}

@DriftDatabase(tables: [Books])
class AppDatabase extends _$AppDatabase {
  static final AppDatabase instance = AppDatabase._internal();

  AppDatabase._internal() : super(_openConnection());

  @override
  int get schemaVersion => 1;

 // Add
Future<void> addBook(String title, String author, {DateTime? publicationDate}) async {
  // Eğer dışarıdan bir publicationDate gönderilmediyse (null ise),
  // güncel sistem saatini kullan.
  final dateToInsert = publicationDate ?? DateTime.now();

  await into(books).insert(BooksCompanion(
    title: Value(title),
    author: Value(author),
    publicationDate: Value(dateToInsert),
  ));
}

 // Find
  Future<Book?> findBookByTitle(String title) async {
    return await (select(books)
          ..where((t) => t.title.equals(title)))
        .getSingleOrNull();
  }

 //Update 

Future<bool> updateBook(int id, String newTitle, String newAuthor) async {
  final count = await (update(books)
        ..where((t) => t.id.equals(id)))
      .write(BooksCompanion(
        title: Value(newTitle),
        author: Value(newAuthor),
      ));
  return count > 0;
}

 // Delete
  Future<int> deleteBook(int id) async {
  return await (delete(books)
        ..where((t) => t.id.equals(id)))
      .go();
  }

 //List
  Stream<List<Book>> getAllBooks() {
  return select(books).watch();
}
} 

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}