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
  // Statik bir örnek (instance) oluşturuyoruz.
  static final AppDatabase instance = AppDatabase._internal();

  // Kurucuyu gizli hale getiriyoruz.
  AppDatabase._internal() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // Yeni kitap ekleme fonksiyonu
  Future<void> addBook(String title, String author, {DateTime? publicationDate}) async {
    await into(books).insert(BooksCompanion(
      title: Value(title),
      author: Value(author),
      publicationDate: Value(publicationDate),
    ));
  }

  // Başlığa göre kitap bulma fonksiyonu
  Future<Book?> findBookByTitle(String title) async {
    return await (select(books)
          ..where((t) => t.title.equals(title)))
        .getSingleOrNull();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}