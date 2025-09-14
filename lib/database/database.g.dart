// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $WordPairsTable extends WordPairs
    with TableInfo<$WordPairsTable, WordPair> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WordPairsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _originalTextMeta = const VerificationMeta(
    'originalText',
  );
  @override
  late final GeneratedColumn<String> originalText = GeneratedColumn<String>(
    'original_text',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _originalLanguageCodeMeta =
      const VerificationMeta('originalLanguageCode');
  @override
  late final GeneratedColumn<String> originalLanguageCode =
      GeneratedColumn<String>(
        'original_language_code',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _translationTextMeta = const VerificationMeta(
    'translationText',
  );
  @override
  late final GeneratedColumn<String> translationText = GeneratedColumn<String>(
    'translation_text',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _translationLanguageCodeMeta =
      const VerificationMeta('translationLanguageCode');
  @override
  late final GeneratedColumn<String> translationLanguageCode =
      GeneratedColumn<String>(
        'translation_language_code',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      );
  static const VerificationMeta _isUserDefinedMeta = const VerificationMeta(
    'isUserDefined',
  );
  @override
  late final GeneratedColumn<bool> isUserDefined = GeneratedColumn<bool>(
    'is_user_defined',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_user_defined" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _creationDateMeta = const VerificationMeta(
    'creationDate',
  );
  @override
  late final GeneratedColumn<DateTime> creationDate = GeneratedColumn<DateTime>(
    'creation_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    originalText,
    originalLanguageCode,
    translationText,
    translationLanguageCode,
    isUserDefined,
    creationDate,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'word_pairs';
  @override
  VerificationContext validateIntegrity(
    Insertable<WordPair> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('original_text')) {
      context.handle(
        _originalTextMeta,
        originalText.isAcceptableOrUnknown(
          data['original_text']!,
          _originalTextMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_originalTextMeta);
    }
    if (data.containsKey('original_language_code')) {
      context.handle(
        _originalLanguageCodeMeta,
        originalLanguageCode.isAcceptableOrUnknown(
          data['original_language_code']!,
          _originalLanguageCodeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_originalLanguageCodeMeta);
    }
    if (data.containsKey('translation_text')) {
      context.handle(
        _translationTextMeta,
        translationText.isAcceptableOrUnknown(
          data['translation_text']!,
          _translationTextMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_translationTextMeta);
    }
    if (data.containsKey('translation_language_code')) {
      context.handle(
        _translationLanguageCodeMeta,
        translationLanguageCode.isAcceptableOrUnknown(
          data['translation_language_code']!,
          _translationLanguageCodeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_translationLanguageCodeMeta);
    }
    if (data.containsKey('is_user_defined')) {
      context.handle(
        _isUserDefinedMeta,
        isUserDefined.isAcceptableOrUnknown(
          data['is_user_defined']!,
          _isUserDefinedMeta,
        ),
      );
    }
    if (data.containsKey('creation_date')) {
      context.handle(
        _creationDateMeta,
        creationDate.isAcceptableOrUnknown(
          data['creation_date']!,
          _creationDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_creationDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WordPair map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WordPair(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      originalText: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}original_text'],
      )!,
      originalLanguageCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}original_language_code'],
      )!,
      translationText: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}translation_text'],
      )!,
      translationLanguageCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}translation_language_code'],
      )!,
      isUserDefined: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_user_defined'],
      )!,
      creationDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}creation_date'],
      )!,
    );
  }

  @override
  $WordPairsTable createAlias(String alias) {
    return $WordPairsTable(attachedDatabase, alias);
  }
}

class WordPair extends DataClass implements Insertable<WordPair> {
  final int id;
  final String originalText;
  final String originalLanguageCode;
  final String translationText;
  final String translationLanguageCode;
  final bool isUserDefined;
  final DateTime creationDate;
  const WordPair({
    required this.id,
    required this.originalText,
    required this.originalLanguageCode,
    required this.translationText,
    required this.translationLanguageCode,
    required this.isUserDefined,
    required this.creationDate,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['original_text'] = Variable<String>(originalText);
    map['original_language_code'] = Variable<String>(originalLanguageCode);
    map['translation_text'] = Variable<String>(translationText);
    map['translation_language_code'] = Variable<String>(
      translationLanguageCode,
    );
    map['is_user_defined'] = Variable<bool>(isUserDefined);
    map['creation_date'] = Variable<DateTime>(creationDate);
    return map;
  }

  WordPairsCompanion toCompanion(bool nullToAbsent) {
    return WordPairsCompanion(
      id: Value(id),
      originalText: Value(originalText),
      originalLanguageCode: Value(originalLanguageCode),
      translationText: Value(translationText),
      translationLanguageCode: Value(translationLanguageCode),
      isUserDefined: Value(isUserDefined),
      creationDate: Value(creationDate),
    );
  }

  factory WordPair.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WordPair(
      id: serializer.fromJson<int>(json['id']),
      originalText: serializer.fromJson<String>(json['originalText']),
      originalLanguageCode: serializer.fromJson<String>(
        json['originalLanguageCode'],
      ),
      translationText: serializer.fromJson<String>(json['translationText']),
      translationLanguageCode: serializer.fromJson<String>(
        json['translationLanguageCode'],
      ),
      isUserDefined: serializer.fromJson<bool>(json['isUserDefined']),
      creationDate: serializer.fromJson<DateTime>(json['creationDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'originalText': serializer.toJson<String>(originalText),
      'originalLanguageCode': serializer.toJson<String>(originalLanguageCode),
      'translationText': serializer.toJson<String>(translationText),
      'translationLanguageCode': serializer.toJson<String>(
        translationLanguageCode,
      ),
      'isUserDefined': serializer.toJson<bool>(isUserDefined),
      'creationDate': serializer.toJson<DateTime>(creationDate),
    };
  }

  WordPair copyWith({
    int? id,
    String? originalText,
    String? originalLanguageCode,
    String? translationText,
    String? translationLanguageCode,
    bool? isUserDefined,
    DateTime? creationDate,
  }) => WordPair(
    id: id ?? this.id,
    originalText: originalText ?? this.originalText,
    originalLanguageCode: originalLanguageCode ?? this.originalLanguageCode,
    translationText: translationText ?? this.translationText,
    translationLanguageCode:
        translationLanguageCode ?? this.translationLanguageCode,
    isUserDefined: isUserDefined ?? this.isUserDefined,
    creationDate: creationDate ?? this.creationDate,
  );
  WordPair copyWithCompanion(WordPairsCompanion data) {
    return WordPair(
      id: data.id.present ? data.id.value : this.id,
      originalText: data.originalText.present
          ? data.originalText.value
          : this.originalText,
      originalLanguageCode: data.originalLanguageCode.present
          ? data.originalLanguageCode.value
          : this.originalLanguageCode,
      translationText: data.translationText.present
          ? data.translationText.value
          : this.translationText,
      translationLanguageCode: data.translationLanguageCode.present
          ? data.translationLanguageCode.value
          : this.translationLanguageCode,
      isUserDefined: data.isUserDefined.present
          ? data.isUserDefined.value
          : this.isUserDefined,
      creationDate: data.creationDate.present
          ? data.creationDate.value
          : this.creationDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WordPair(')
          ..write('id: $id, ')
          ..write('originalText: $originalText, ')
          ..write('originalLanguageCode: $originalLanguageCode, ')
          ..write('translationText: $translationText, ')
          ..write('translationLanguageCode: $translationLanguageCode, ')
          ..write('isUserDefined: $isUserDefined, ')
          ..write('creationDate: $creationDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    originalText,
    originalLanguageCode,
    translationText,
    translationLanguageCode,
    isUserDefined,
    creationDate,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WordPair &&
          other.id == this.id &&
          other.originalText == this.originalText &&
          other.originalLanguageCode == this.originalLanguageCode &&
          other.translationText == this.translationText &&
          other.translationLanguageCode == this.translationLanguageCode &&
          other.isUserDefined == this.isUserDefined &&
          other.creationDate == this.creationDate);
}

class WordPairsCompanion extends UpdateCompanion<WordPair> {
  final Value<int> id;
  final Value<String> originalText;
  final Value<String> originalLanguageCode;
  final Value<String> translationText;
  final Value<String> translationLanguageCode;
  final Value<bool> isUserDefined;
  final Value<DateTime> creationDate;
  const WordPairsCompanion({
    this.id = const Value.absent(),
    this.originalText = const Value.absent(),
    this.originalLanguageCode = const Value.absent(),
    this.translationText = const Value.absent(),
    this.translationLanguageCode = const Value.absent(),
    this.isUserDefined = const Value.absent(),
    this.creationDate = const Value.absent(),
  });
  WordPairsCompanion.insert({
    this.id = const Value.absent(),
    required String originalText,
    required String originalLanguageCode,
    required String translationText,
    required String translationLanguageCode,
    this.isUserDefined = const Value.absent(),
    required DateTime creationDate,
  }) : originalText = Value(originalText),
       originalLanguageCode = Value(originalLanguageCode),
       translationText = Value(translationText),
       translationLanguageCode = Value(translationLanguageCode),
       creationDate = Value(creationDate);
  static Insertable<WordPair> custom({
    Expression<int>? id,
    Expression<String>? originalText,
    Expression<String>? originalLanguageCode,
    Expression<String>? translationText,
    Expression<String>? translationLanguageCode,
    Expression<bool>? isUserDefined,
    Expression<DateTime>? creationDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (originalText != null) 'original_text': originalText,
      if (originalLanguageCode != null)
        'original_language_code': originalLanguageCode,
      if (translationText != null) 'translation_text': translationText,
      if (translationLanguageCode != null)
        'translation_language_code': translationLanguageCode,
      if (isUserDefined != null) 'is_user_defined': isUserDefined,
      if (creationDate != null) 'creation_date': creationDate,
    });
  }

  WordPairsCompanion copyWith({
    Value<int>? id,
    Value<String>? originalText,
    Value<String>? originalLanguageCode,
    Value<String>? translationText,
    Value<String>? translationLanguageCode,
    Value<bool>? isUserDefined,
    Value<DateTime>? creationDate,
  }) {
    return WordPairsCompanion(
      id: id ?? this.id,
      originalText: originalText ?? this.originalText,
      originalLanguageCode: originalLanguageCode ?? this.originalLanguageCode,
      translationText: translationText ?? this.translationText,
      translationLanguageCode:
          translationLanguageCode ?? this.translationLanguageCode,
      isUserDefined: isUserDefined ?? this.isUserDefined,
      creationDate: creationDate ?? this.creationDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (originalText.present) {
      map['original_text'] = Variable<String>(originalText.value);
    }
    if (originalLanguageCode.present) {
      map['original_language_code'] = Variable<String>(
        originalLanguageCode.value,
      );
    }
    if (translationText.present) {
      map['translation_text'] = Variable<String>(translationText.value);
    }
    if (translationLanguageCode.present) {
      map['translation_language_code'] = Variable<String>(
        translationLanguageCode.value,
      );
    }
    if (isUserDefined.present) {
      map['is_user_defined'] = Variable<bool>(isUserDefined.value);
    }
    if (creationDate.present) {
      map['creation_date'] = Variable<DateTime>(creationDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WordPairsCompanion(')
          ..write('id: $id, ')
          ..write('originalText: $originalText, ')
          ..write('originalLanguageCode: $originalLanguageCode, ')
          ..write('translationText: $translationText, ')
          ..write('translationLanguageCode: $translationLanguageCode, ')
          ..write('isUserDefined: $isUserDefined, ')
          ..write('creationDate: $creationDate')
          ..write(')'))
        .toString();
  }
}

class $WordSetsTable extends WordSets with TableInfo<$WordSetsTable, WordSet> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $WordSetsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 255,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _languagePairMeta = const VerificationMeta(
    'languagePair',
  );
  @override
  late final GeneratedColumn<String> languagePair = GeneratedColumn<String>(
    'language_pair',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isUserDefinedMeta = const VerificationMeta(
    'isUserDefined',
  );
  @override
  late final GeneratedColumn<bool> isUserDefined = GeneratedColumn<bool>(
    'is_user_defined',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_user_defined" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, languagePair, isUserDefined];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'word_sets';
  @override
  VerificationContext validateIntegrity(
    Insertable<WordSet> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('language_pair')) {
      context.handle(
        _languagePairMeta,
        languagePair.isAcceptableOrUnknown(
          data['language_pair']!,
          _languagePairMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_languagePairMeta);
    }
    if (data.containsKey('is_user_defined')) {
      context.handle(
        _isUserDefinedMeta,
        isUserDefined.isAcceptableOrUnknown(
          data['is_user_defined']!,
          _isUserDefinedMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WordSet map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return WordSet(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      languagePair: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}language_pair'],
      )!,
      isUserDefined: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_user_defined'],
      )!,
    );
  }

  @override
  $WordSetsTable createAlias(String alias) {
    return $WordSetsTable(attachedDatabase, alias);
  }
}

class WordSet extends DataClass implements Insertable<WordSet> {
  final int id;
  final String name;
  final String languagePair;
  final bool isUserDefined;
  const WordSet({
    required this.id,
    required this.name,
    required this.languagePair,
    required this.isUserDefined,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['language_pair'] = Variable<String>(languagePair);
    map['is_user_defined'] = Variable<bool>(isUserDefined);
    return map;
  }

  WordSetsCompanion toCompanion(bool nullToAbsent) {
    return WordSetsCompanion(
      id: Value(id),
      name: Value(name),
      languagePair: Value(languagePair),
      isUserDefined: Value(isUserDefined),
    );
  }

  factory WordSet.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return WordSet(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      languagePair: serializer.fromJson<String>(json['languagePair']),
      isUserDefined: serializer.fromJson<bool>(json['isUserDefined']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'languagePair': serializer.toJson<String>(languagePair),
      'isUserDefined': serializer.toJson<bool>(isUserDefined),
    };
  }

  WordSet copyWith({
    int? id,
    String? name,
    String? languagePair,
    bool? isUserDefined,
  }) => WordSet(
    id: id ?? this.id,
    name: name ?? this.name,
    languagePair: languagePair ?? this.languagePair,
    isUserDefined: isUserDefined ?? this.isUserDefined,
  );
  WordSet copyWithCompanion(WordSetsCompanion data) {
    return WordSet(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      languagePair: data.languagePair.present
          ? data.languagePair.value
          : this.languagePair,
      isUserDefined: data.isUserDefined.present
          ? data.isUserDefined.value
          : this.isUserDefined,
    );
  }

  @override
  String toString() {
    return (StringBuffer('WordSet(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('languagePair: $languagePair, ')
          ..write('isUserDefined: $isUserDefined')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, languagePair, isUserDefined);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WordSet &&
          other.id == this.id &&
          other.name == this.name &&
          other.languagePair == this.languagePair &&
          other.isUserDefined == this.isUserDefined);
}

class WordSetsCompanion extends UpdateCompanion<WordSet> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> languagePair;
  final Value<bool> isUserDefined;
  const WordSetsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.languagePair = const Value.absent(),
    this.isUserDefined = const Value.absent(),
  });
  WordSetsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String languagePair,
    this.isUserDefined = const Value.absent(),
  }) : name = Value(name),
       languagePair = Value(languagePair);
  static Insertable<WordSet> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? languagePair,
    Expression<bool>? isUserDefined,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (languagePair != null) 'language_pair': languagePair,
      if (isUserDefined != null) 'is_user_defined': isUserDefined,
    });
  }

  WordSetsCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String>? languagePair,
    Value<bool>? isUserDefined,
  }) {
    return WordSetsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      languagePair: languagePair ?? this.languagePair,
      isUserDefined: isUserDefined ?? this.isUserDefined,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (languagePair.present) {
      map['language_pair'] = Variable<String>(languagePair.value);
    }
    if (isUserDefined.present) {
      map['is_user_defined'] = Variable<bool>(isUserDefined.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WordSetsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('languagePair: $languagePair, ')
          ..write('isUserDefined: $isUserDefined')
          ..write(')'))
        .toString();
  }
}

class $SetWordsTable extends SetWords with TableInfo<$SetWordsTable, SetWord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SetWordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _wordIdMeta = const VerificationMeta('wordId');
  @override
  late final GeneratedColumn<int> wordId = GeneratedColumn<int>(
    'word_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES word_pairs (id)',
    ),
  );
  static const VerificationMeta _setIdMeta = const VerificationMeta('setId');
  @override
  late final GeneratedColumn<int> setId = GeneratedColumn<int>(
    'set_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES word_sets (id)',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [wordId, setId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'set_words';
  @override
  VerificationContext validateIntegrity(
    Insertable<SetWord> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('word_id')) {
      context.handle(
        _wordIdMeta,
        wordId.isAcceptableOrUnknown(data['word_id']!, _wordIdMeta),
      );
    } else if (isInserting) {
      context.missing(_wordIdMeta);
    }
    if (data.containsKey('set_id')) {
      context.handle(
        _setIdMeta,
        setId.isAcceptableOrUnknown(data['set_id']!, _setIdMeta),
      );
    } else if (isInserting) {
      context.missing(_setIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {wordId, setId};
  @override
  SetWord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SetWord(
      wordId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}word_id'],
      )!,
      setId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}set_id'],
      )!,
    );
  }

  @override
  $SetWordsTable createAlias(String alias) {
    return $SetWordsTable(attachedDatabase, alias);
  }
}

class SetWord extends DataClass implements Insertable<SetWord> {
  final int wordId;
  final int setId;
  const SetWord({required this.wordId, required this.setId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['word_id'] = Variable<int>(wordId);
    map['set_id'] = Variable<int>(setId);
    return map;
  }

  SetWordsCompanion toCompanion(bool nullToAbsent) {
    return SetWordsCompanion(wordId: Value(wordId), setId: Value(setId));
  }

  factory SetWord.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SetWord(
      wordId: serializer.fromJson<int>(json['wordId']),
      setId: serializer.fromJson<int>(json['setId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'wordId': serializer.toJson<int>(wordId),
      'setId': serializer.toJson<int>(setId),
    };
  }

  SetWord copyWith({int? wordId, int? setId}) =>
      SetWord(wordId: wordId ?? this.wordId, setId: setId ?? this.setId);
  SetWord copyWithCompanion(SetWordsCompanion data) {
    return SetWord(
      wordId: data.wordId.present ? data.wordId.value : this.wordId,
      setId: data.setId.present ? data.setId.value : this.setId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SetWord(')
          ..write('wordId: $wordId, ')
          ..write('setId: $setId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(wordId, setId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SetWord &&
          other.wordId == this.wordId &&
          other.setId == this.setId);
}

class SetWordsCompanion extends UpdateCompanion<SetWord> {
  final Value<int> wordId;
  final Value<int> setId;
  final Value<int> rowid;
  const SetWordsCompanion({
    this.wordId = const Value.absent(),
    this.setId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SetWordsCompanion.insert({
    required int wordId,
    required int setId,
    this.rowid = const Value.absent(),
  }) : wordId = Value(wordId),
       setId = Value(setId);
  static Insertable<SetWord> custom({
    Expression<int>? wordId,
    Expression<int>? setId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (wordId != null) 'word_id': wordId,
      if (setId != null) 'set_id': setId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SetWordsCompanion copyWith({
    Value<int>? wordId,
    Value<int>? setId,
    Value<int>? rowid,
  }) {
    return SetWordsCompanion(
      wordId: wordId ?? this.wordId,
      setId: setId ?? this.setId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (wordId.present) {
      map['word_id'] = Variable<int>(wordId.value);
    }
    if (setId.present) {
      map['set_id'] = Variable<int>(setId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SetWordsCompanion(')
          ..write('wordId: $wordId, ')
          ..write('setId: $setId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  $MyDatabaseManager get managers => $MyDatabaseManager(this);
  late final $WordPairsTable wordPairs = $WordPairsTable(this);
  late final $WordSetsTable wordSets = $WordSetsTable(this);
  late final $SetWordsTable setWords = $SetWordsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    wordPairs,
    wordSets,
    setWords,
  ];
}

typedef $$WordPairsTableCreateCompanionBuilder =
    WordPairsCompanion Function({
      Value<int> id,
      required String originalText,
      required String originalLanguageCode,
      required String translationText,
      required String translationLanguageCode,
      Value<bool> isUserDefined,
      required DateTime creationDate,
    });
typedef $$WordPairsTableUpdateCompanionBuilder =
    WordPairsCompanion Function({
      Value<int> id,
      Value<String> originalText,
      Value<String> originalLanguageCode,
      Value<String> translationText,
      Value<String> translationLanguageCode,
      Value<bool> isUserDefined,
      Value<DateTime> creationDate,
    });

final class $$WordPairsTableReferences
    extends BaseReferences<_$MyDatabase, $WordPairsTable, WordPair> {
  $$WordPairsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$SetWordsTable, List<SetWord>> _setWordsRefsTable(
    _$MyDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.setWords,
    aliasName: $_aliasNameGenerator(db.wordPairs.id, db.setWords.wordId),
  );

  $$SetWordsTableProcessedTableManager get setWordsRefs {
    final manager = $$SetWordsTableTableManager(
      $_db,
      $_db.setWords,
    ).filter((f) => f.wordId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_setWordsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$WordPairsTableFilterComposer
    extends Composer<_$MyDatabase, $WordPairsTable> {
  $$WordPairsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get originalText => $composableBuilder(
    column: $table.originalText,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get originalLanguageCode => $composableBuilder(
    column: $table.originalLanguageCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get translationText => $composableBuilder(
    column: $table.translationText,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get translationLanguageCode => $composableBuilder(
    column: $table.translationLanguageCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isUserDefined => $composableBuilder(
    column: $table.isUserDefined,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get creationDate => $composableBuilder(
    column: $table.creationDate,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> setWordsRefs(
    Expression<bool> Function($$SetWordsTableFilterComposer f) f,
  ) {
    final $$SetWordsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.setWords,
      getReferencedColumn: (t) => t.wordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SetWordsTableFilterComposer(
            $db: $db,
            $table: $db.setWords,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$WordPairsTableOrderingComposer
    extends Composer<_$MyDatabase, $WordPairsTable> {
  $$WordPairsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get originalText => $composableBuilder(
    column: $table.originalText,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get originalLanguageCode => $composableBuilder(
    column: $table.originalLanguageCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get translationText => $composableBuilder(
    column: $table.translationText,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get translationLanguageCode => $composableBuilder(
    column: $table.translationLanguageCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isUserDefined => $composableBuilder(
    column: $table.isUserDefined,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get creationDate => $composableBuilder(
    column: $table.creationDate,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$WordPairsTableAnnotationComposer
    extends Composer<_$MyDatabase, $WordPairsTable> {
  $$WordPairsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get originalText => $composableBuilder(
    column: $table.originalText,
    builder: (column) => column,
  );

  GeneratedColumn<String> get originalLanguageCode => $composableBuilder(
    column: $table.originalLanguageCode,
    builder: (column) => column,
  );

  GeneratedColumn<String> get translationText => $composableBuilder(
    column: $table.translationText,
    builder: (column) => column,
  );

  GeneratedColumn<String> get translationLanguageCode => $composableBuilder(
    column: $table.translationLanguageCode,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isUserDefined => $composableBuilder(
    column: $table.isUserDefined,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get creationDate => $composableBuilder(
    column: $table.creationDate,
    builder: (column) => column,
  );

  Expression<T> setWordsRefs<T extends Object>(
    Expression<T> Function($$SetWordsTableAnnotationComposer a) f,
  ) {
    final $$SetWordsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.setWords,
      getReferencedColumn: (t) => t.wordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SetWordsTableAnnotationComposer(
            $db: $db,
            $table: $db.setWords,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$WordPairsTableTableManager
    extends
        RootTableManager<
          _$MyDatabase,
          $WordPairsTable,
          WordPair,
          $$WordPairsTableFilterComposer,
          $$WordPairsTableOrderingComposer,
          $$WordPairsTableAnnotationComposer,
          $$WordPairsTableCreateCompanionBuilder,
          $$WordPairsTableUpdateCompanionBuilder,
          (WordPair, $$WordPairsTableReferences),
          WordPair,
          PrefetchHooks Function({bool setWordsRefs})
        > {
  $$WordPairsTableTableManager(_$MyDatabase db, $WordPairsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WordPairsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WordPairsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WordPairsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> originalText = const Value.absent(),
                Value<String> originalLanguageCode = const Value.absent(),
                Value<String> translationText = const Value.absent(),
                Value<String> translationLanguageCode = const Value.absent(),
                Value<bool> isUserDefined = const Value.absent(),
                Value<DateTime> creationDate = const Value.absent(),
              }) => WordPairsCompanion(
                id: id,
                originalText: originalText,
                originalLanguageCode: originalLanguageCode,
                translationText: translationText,
                translationLanguageCode: translationLanguageCode,
                isUserDefined: isUserDefined,
                creationDate: creationDate,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String originalText,
                required String originalLanguageCode,
                required String translationText,
                required String translationLanguageCode,
                Value<bool> isUserDefined = const Value.absent(),
                required DateTime creationDate,
              }) => WordPairsCompanion.insert(
                id: id,
                originalText: originalText,
                originalLanguageCode: originalLanguageCode,
                translationText: translationText,
                translationLanguageCode: translationLanguageCode,
                isUserDefined: isUserDefined,
                creationDate: creationDate,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$WordPairsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({setWordsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (setWordsRefs) db.setWords],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (setWordsRefs)
                    await $_getPrefetchedData<
                      WordPair,
                      $WordPairsTable,
                      SetWord
                    >(
                      currentTable: table,
                      referencedTable: $$WordPairsTableReferences
                          ._setWordsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$WordPairsTableReferences(
                            db,
                            table,
                            p0,
                          ).setWordsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.wordId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$WordPairsTableProcessedTableManager =
    ProcessedTableManager<
      _$MyDatabase,
      $WordPairsTable,
      WordPair,
      $$WordPairsTableFilterComposer,
      $$WordPairsTableOrderingComposer,
      $$WordPairsTableAnnotationComposer,
      $$WordPairsTableCreateCompanionBuilder,
      $$WordPairsTableUpdateCompanionBuilder,
      (WordPair, $$WordPairsTableReferences),
      WordPair,
      PrefetchHooks Function({bool setWordsRefs})
    >;
typedef $$WordSetsTableCreateCompanionBuilder =
    WordSetsCompanion Function({
      Value<int> id,
      required String name,
      required String languagePair,
      Value<bool> isUserDefined,
    });
typedef $$WordSetsTableUpdateCompanionBuilder =
    WordSetsCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String> languagePair,
      Value<bool> isUserDefined,
    });

final class $$WordSetsTableReferences
    extends BaseReferences<_$MyDatabase, $WordSetsTable, WordSet> {
  $$WordSetsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$SetWordsTable, List<SetWord>> _setWordsRefsTable(
    _$MyDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.setWords,
    aliasName: $_aliasNameGenerator(db.wordSets.id, db.setWords.setId),
  );

  $$SetWordsTableProcessedTableManager get setWordsRefs {
    final manager = $$SetWordsTableTableManager(
      $_db,
      $_db.setWords,
    ).filter((f) => f.setId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_setWordsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$WordSetsTableFilterComposer
    extends Composer<_$MyDatabase, $WordSetsTable> {
  $$WordSetsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get languagePair => $composableBuilder(
    column: $table.languagePair,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isUserDefined => $composableBuilder(
    column: $table.isUserDefined,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> setWordsRefs(
    Expression<bool> Function($$SetWordsTableFilterComposer f) f,
  ) {
    final $$SetWordsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.setWords,
      getReferencedColumn: (t) => t.setId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SetWordsTableFilterComposer(
            $db: $db,
            $table: $db.setWords,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$WordSetsTableOrderingComposer
    extends Composer<_$MyDatabase, $WordSetsTable> {
  $$WordSetsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get languagePair => $composableBuilder(
    column: $table.languagePair,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isUserDefined => $composableBuilder(
    column: $table.isUserDefined,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$WordSetsTableAnnotationComposer
    extends Composer<_$MyDatabase, $WordSetsTable> {
  $$WordSetsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get languagePair => $composableBuilder(
    column: $table.languagePair,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isUserDefined => $composableBuilder(
    column: $table.isUserDefined,
    builder: (column) => column,
  );

  Expression<T> setWordsRefs<T extends Object>(
    Expression<T> Function($$SetWordsTableAnnotationComposer a) f,
  ) {
    final $$SetWordsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.setWords,
      getReferencedColumn: (t) => t.setId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SetWordsTableAnnotationComposer(
            $db: $db,
            $table: $db.setWords,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$WordSetsTableTableManager
    extends
        RootTableManager<
          _$MyDatabase,
          $WordSetsTable,
          WordSet,
          $$WordSetsTableFilterComposer,
          $$WordSetsTableOrderingComposer,
          $$WordSetsTableAnnotationComposer,
          $$WordSetsTableCreateCompanionBuilder,
          $$WordSetsTableUpdateCompanionBuilder,
          (WordSet, $$WordSetsTableReferences),
          WordSet,
          PrefetchHooks Function({bool setWordsRefs})
        > {
  $$WordSetsTableTableManager(_$MyDatabase db, $WordSetsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$WordSetsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$WordSetsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$WordSetsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> languagePair = const Value.absent(),
                Value<bool> isUserDefined = const Value.absent(),
              }) => WordSetsCompanion(
                id: id,
                name: name,
                languagePair: languagePair,
                isUserDefined: isUserDefined,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required String languagePair,
                Value<bool> isUserDefined = const Value.absent(),
              }) => WordSetsCompanion.insert(
                id: id,
                name: name,
                languagePair: languagePair,
                isUserDefined: isUserDefined,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$WordSetsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({setWordsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (setWordsRefs) db.setWords],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (setWordsRefs)
                    await $_getPrefetchedData<WordSet, $WordSetsTable, SetWord>(
                      currentTable: table,
                      referencedTable: $$WordSetsTableReferences
                          ._setWordsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$WordSetsTableReferences(db, table, p0).setWordsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.setId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$WordSetsTableProcessedTableManager =
    ProcessedTableManager<
      _$MyDatabase,
      $WordSetsTable,
      WordSet,
      $$WordSetsTableFilterComposer,
      $$WordSetsTableOrderingComposer,
      $$WordSetsTableAnnotationComposer,
      $$WordSetsTableCreateCompanionBuilder,
      $$WordSetsTableUpdateCompanionBuilder,
      (WordSet, $$WordSetsTableReferences),
      WordSet,
      PrefetchHooks Function({bool setWordsRefs})
    >;
typedef $$SetWordsTableCreateCompanionBuilder =
    SetWordsCompanion Function({
      required int wordId,
      required int setId,
      Value<int> rowid,
    });
typedef $$SetWordsTableUpdateCompanionBuilder =
    SetWordsCompanion Function({
      Value<int> wordId,
      Value<int> setId,
      Value<int> rowid,
    });

final class $$SetWordsTableReferences
    extends BaseReferences<_$MyDatabase, $SetWordsTable, SetWord> {
  $$SetWordsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $WordPairsTable _wordIdTable(_$MyDatabase db) => db.wordPairs
      .createAlias($_aliasNameGenerator(db.setWords.wordId, db.wordPairs.id));

  $$WordPairsTableProcessedTableManager get wordId {
    final $_column = $_itemColumn<int>('word_id')!;

    final manager = $$WordPairsTableTableManager(
      $_db,
      $_db.wordPairs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_wordIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $WordSetsTable _setIdTable(_$MyDatabase db) => db.wordSets.createAlias(
    $_aliasNameGenerator(db.setWords.setId, db.wordSets.id),
  );

  $$WordSetsTableProcessedTableManager get setId {
    final $_column = $_itemColumn<int>('set_id')!;

    final manager = $$WordSetsTableTableManager(
      $_db,
      $_db.wordSets,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_setIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$SetWordsTableFilterComposer
    extends Composer<_$MyDatabase, $SetWordsTable> {
  $$SetWordsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$WordPairsTableFilterComposer get wordId {
    final $$WordPairsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.wordId,
      referencedTable: $db.wordPairs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WordPairsTableFilterComposer(
            $db: $db,
            $table: $db.wordPairs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$WordSetsTableFilterComposer get setId {
    final $$WordSetsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.setId,
      referencedTable: $db.wordSets,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WordSetsTableFilterComposer(
            $db: $db,
            $table: $db.wordSets,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SetWordsTableOrderingComposer
    extends Composer<_$MyDatabase, $SetWordsTable> {
  $$SetWordsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$WordPairsTableOrderingComposer get wordId {
    final $$WordPairsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.wordId,
      referencedTable: $db.wordPairs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WordPairsTableOrderingComposer(
            $db: $db,
            $table: $db.wordPairs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$WordSetsTableOrderingComposer get setId {
    final $$WordSetsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.setId,
      referencedTable: $db.wordSets,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WordSetsTableOrderingComposer(
            $db: $db,
            $table: $db.wordSets,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SetWordsTableAnnotationComposer
    extends Composer<_$MyDatabase, $SetWordsTable> {
  $$SetWordsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$WordPairsTableAnnotationComposer get wordId {
    final $$WordPairsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.wordId,
      referencedTable: $db.wordPairs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WordPairsTableAnnotationComposer(
            $db: $db,
            $table: $db.wordPairs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$WordSetsTableAnnotationComposer get setId {
    final $$WordSetsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.setId,
      referencedTable: $db.wordSets,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$WordSetsTableAnnotationComposer(
            $db: $db,
            $table: $db.wordSets,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SetWordsTableTableManager
    extends
        RootTableManager<
          _$MyDatabase,
          $SetWordsTable,
          SetWord,
          $$SetWordsTableFilterComposer,
          $$SetWordsTableOrderingComposer,
          $$SetWordsTableAnnotationComposer,
          $$SetWordsTableCreateCompanionBuilder,
          $$SetWordsTableUpdateCompanionBuilder,
          (SetWord, $$SetWordsTableReferences),
          SetWord,
          PrefetchHooks Function({bool wordId, bool setId})
        > {
  $$SetWordsTableTableManager(_$MyDatabase db, $SetWordsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SetWordsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SetWordsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SetWordsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> wordId = const Value.absent(),
                Value<int> setId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) =>
                  SetWordsCompanion(wordId: wordId, setId: setId, rowid: rowid),
          createCompanionCallback:
              ({
                required int wordId,
                required int setId,
                Value<int> rowid = const Value.absent(),
              }) => SetWordsCompanion.insert(
                wordId: wordId,
                setId: setId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$SetWordsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({wordId = false, setId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (wordId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.wordId,
                                referencedTable: $$SetWordsTableReferences
                                    ._wordIdTable(db),
                                referencedColumn: $$SetWordsTableReferences
                                    ._wordIdTable(db)
                                    .id,
                              )
                              as T;
                    }
                    if (setId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.setId,
                                referencedTable: $$SetWordsTableReferences
                                    ._setIdTable(db),
                                referencedColumn: $$SetWordsTableReferences
                                    ._setIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$SetWordsTableProcessedTableManager =
    ProcessedTableManager<
      _$MyDatabase,
      $SetWordsTable,
      SetWord,
      $$SetWordsTableFilterComposer,
      $$SetWordsTableOrderingComposer,
      $$SetWordsTableAnnotationComposer,
      $$SetWordsTableCreateCompanionBuilder,
      $$SetWordsTableUpdateCompanionBuilder,
      (SetWord, $$SetWordsTableReferences),
      SetWord,
      PrefetchHooks Function({bool wordId, bool setId})
    >;

class $MyDatabaseManager {
  final _$MyDatabase _db;
  $MyDatabaseManager(this._db);
  $$WordPairsTableTableManager get wordPairs =>
      $$WordPairsTableTableManager(_db, _db.wordPairs);
  $$WordSetsTableTableManager get wordSets =>
      $$WordSetsTableTableManager(_db, _db.wordSets);
  $$SetWordsTableTableManager get setWords =>
      $$SetWordsTableTableManager(_db, _db.setWords);
}
