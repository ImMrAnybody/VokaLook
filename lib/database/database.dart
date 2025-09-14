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
  BoolColumn get isUserDefined =>
      boolean().withDefault(const Constant(false))();
  DateTimeColumn get creationDate => dateTime()();
}

class WordSets extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 255)();
  TextColumn get languagePair => text()();
  BoolColumn get isUserDefined =>
      boolean().withDefault(const Constant(false))();
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

  // Yeni eklenen fonksiyon
  Future<bool> doesSetExist(int setId) async {
    return (await (select(
          wordSets,
        )..where((t) => t.id.equals(setId))).getSingleOrNull()) !=
        null;
  }

  // Güncellenmiş fonksiyon
  Future<void> addWordPair(
    String originalText,
    String originalLanguageCode,
    String translationText,
    String translationLanguageCode,
    bool isUserDefined,
    List<int> setIds,
  ) async {
    for (var setId in setIds) {
      final setExists = await doesSetExist(setId);
      if (!setExists) {
        throw ArgumentError('Belirtilen ID\'ye sahip set bulunamadı: $setId');
      }
    }

    return transaction(() async {
      final newWordPairId = await into(wordPairs).insert(
        WordPairsCompanion.insert(
          originalText: originalText,
          originalLanguageCode: originalLanguageCode,
          translationText: translationText,
          translationLanguageCode: translationLanguageCode,
          isUserDefined: Value(isUserDefined),
          creationDate: DateTime.now(),
        ),
      );

      for (var setId in setIds) {
        await into(
          setWords,
        ).insert(SetWordsCompanion.insert(wordId: newWordPairId, setId: setId));
      }
    });
  }

  Future<int> createWordSet({
    required String name,
    required String languagePair,
    required bool isUserDefined,
  }) async {
    return into(wordSets).insert(
      WordSetsCompanion.insert(
        name: name,
        languagePair: languagePair,
        isUserDefined: Value(isUserDefined),
      ),
    );
  }
}
