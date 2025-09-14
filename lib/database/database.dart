// database.dart
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;


part 'database.g.dart';


class WordPairs extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get originalText => text()();
  TextColumn get originalLanguageCode => text()();
  TextColumn get translationText => text()();
  TextColumn get translationLanguageCode => text()();
  BoolColumn get isUserDefined => boolean().withDefault(const Constant(false))();
  DateTimeColumn get creationDate => dateTime()();
}

class WordSets extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 255)();
  TextColumn get languagePair => text()();
  BoolColumn get isUserDefined => boolean().withDefault(const Constant(false))();
}

class SetWords extends Table {
  IntColumn get wordId => integer().references(WordPairs, #id)();
  IntColumn get setId => integer().references(WordSets, #id)();

  @override
  Set<Column> get primaryKey => {wordId, setId};
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [WordPairs, WordSets, SetWords])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}