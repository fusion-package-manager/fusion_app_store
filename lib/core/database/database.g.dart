// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $AppTableTable extends AppTable
    with TableInfo<$AppTableTable, AppTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AppTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _packageIDMeta =
      const VerificationMeta('packageID');
  @override
  late final GeneratedColumn<String> packageID = GeneratedColumn<String>(
      'package_i_d', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _shortDescriptionMeta =
      const VerificationMeta('shortDescription');
  @override
  late final GeneratedColumn<String> shortDescription = GeneratedColumn<String>(
      'short_description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentRatedMeta =
      const VerificationMeta('contentRated');
  @override
  late final GeneratedColumn<String> contentRated = GeneratedColumn<String>(
      'content_rated', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _platformsMeta =
      const VerificationMeta('platforms');
  @override
  late final GeneratedColumn<String> platforms = GeneratedColumn<String>(
      'platforms', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
      'source', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _supportMeta =
      const VerificationMeta('support');
  @override
  late final GeneratedColumn<String> support = GeneratedColumn<String>(
      'support', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _linksMeta = const VerificationMeta('links');
  @override
  late final GeneratedColumn<String> links = GeneratedColumn<String>(
      'links', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _reviewsMeta =
      const VerificationMeta('reviews');
  @override
  late final GeneratedColumn<String> reviews = GeneratedColumn<String>(
      'reviews', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _downloadsMeta =
      const VerificationMeta('downloads');
  @override
  late final GeneratedColumn<int> downloads = GeneratedColumn<int>(
      'downloads', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _uploadDateMeta =
      const VerificationMeta('uploadDate');
  @override
  late final GeneratedColumn<DateTime> uploadDate = GeneratedColumn<DateTime>(
      'upload_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updateDateMeta =
      const VerificationMeta('updateDate');
  @override
  late final GeneratedColumn<DateTime> updateDate = GeneratedColumn<DateTime>(
      'update_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        packageID,
        name,
        shortDescription,
        description,
        contentRated,
        category,
        platforms,
        source,
        support,
        links,
        reviews,
        downloads,
        uploadDate,
        updateDate
      ];
  @override
  String get aliasedName => _alias ?? 'app_table';
  @override
  String get actualTableName => 'app_table';
  @override
  VerificationContext validateIntegrity(Insertable<AppTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('package_i_d')) {
      context.handle(
          _packageIDMeta,
          packageID.isAcceptableOrUnknown(
              data['package_i_d']!, _packageIDMeta));
    } else if (isInserting) {
      context.missing(_packageIDMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('short_description')) {
      context.handle(
          _shortDescriptionMeta,
          shortDescription.isAcceptableOrUnknown(
              data['short_description']!, _shortDescriptionMeta));
    } else if (isInserting) {
      context.missing(_shortDescriptionMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('content_rated')) {
      context.handle(
          _contentRatedMeta,
          contentRated.isAcceptableOrUnknown(
              data['content_rated']!, _contentRatedMeta));
    } else if (isInserting) {
      context.missing(_contentRatedMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('platforms')) {
      context.handle(_platformsMeta,
          platforms.isAcceptableOrUnknown(data['platforms']!, _platformsMeta));
    } else if (isInserting) {
      context.missing(_platformsMeta);
    }
    if (data.containsKey('source')) {
      context.handle(_sourceMeta,
          source.isAcceptableOrUnknown(data['source']!, _sourceMeta));
    } else if (isInserting) {
      context.missing(_sourceMeta);
    }
    if (data.containsKey('support')) {
      context.handle(_supportMeta,
          support.isAcceptableOrUnknown(data['support']!, _supportMeta));
    } else if (isInserting) {
      context.missing(_supportMeta);
    }
    if (data.containsKey('links')) {
      context.handle(
          _linksMeta, links.isAcceptableOrUnknown(data['links']!, _linksMeta));
    } else if (isInserting) {
      context.missing(_linksMeta);
    }
    if (data.containsKey('reviews')) {
      context.handle(_reviewsMeta,
          reviews.isAcceptableOrUnknown(data['reviews']!, _reviewsMeta));
    } else if (isInserting) {
      context.missing(_reviewsMeta);
    }
    if (data.containsKey('downloads')) {
      context.handle(_downloadsMeta,
          downloads.isAcceptableOrUnknown(data['downloads']!, _downloadsMeta));
    } else if (isInserting) {
      context.missing(_downloadsMeta);
    }
    if (data.containsKey('upload_date')) {
      context.handle(
          _uploadDateMeta,
          uploadDate.isAcceptableOrUnknown(
              data['upload_date']!, _uploadDateMeta));
    } else if (isInserting) {
      context.missing(_uploadDateMeta);
    }
    if (data.containsKey('update_date')) {
      context.handle(
          _updateDateMeta,
          updateDate.isAcceptableOrUnknown(
              data['update_date']!, _updateDateMeta));
    } else if (isInserting) {
      context.missing(_updateDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  AppTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AppTableData(
      packageID: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}package_i_d'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      shortDescription: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}short_description'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      contentRated: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content_rated'])!,
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category'])!,
      platforms: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}platforms'])!,
      source: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source'])!,
      support: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}support'])!,
      links: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}links'])!,
      reviews: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}reviews'])!,
      downloads: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}downloads'])!,
      uploadDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}upload_date'])!,
      updateDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}update_date'])!,
    );
  }

  @override
  $AppTableTable createAlias(String alias) {
    return $AppTableTable(attachedDatabase, alias);
  }
}

class AppTableData extends DataClass implements Insertable<AppTableData> {
  final String packageID;
  final String name;
  final String shortDescription;
  final String description;
  final String contentRated;
  final String category;
  final String platforms;
  final String source;
  final String support;
  final String links;
  final String reviews;
  final int downloads;
  final DateTime uploadDate;
  final DateTime updateDate;
  const AppTableData(
      {required this.packageID,
      required this.name,
      required this.shortDescription,
      required this.description,
      required this.contentRated,
      required this.category,
      required this.platforms,
      required this.source,
      required this.support,
      required this.links,
      required this.reviews,
      required this.downloads,
      required this.uploadDate,
      required this.updateDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['package_i_d'] = Variable<String>(packageID);
    map['name'] = Variable<String>(name);
    map['short_description'] = Variable<String>(shortDescription);
    map['description'] = Variable<String>(description);
    map['content_rated'] = Variable<String>(contentRated);
    map['category'] = Variable<String>(category);
    map['platforms'] = Variable<String>(platforms);
    map['source'] = Variable<String>(source);
    map['support'] = Variable<String>(support);
    map['links'] = Variable<String>(links);
    map['reviews'] = Variable<String>(reviews);
    map['downloads'] = Variable<int>(downloads);
    map['upload_date'] = Variable<DateTime>(uploadDate);
    map['update_date'] = Variable<DateTime>(updateDate);
    return map;
  }

  AppTableCompanion toCompanion(bool nullToAbsent) {
    return AppTableCompanion(
      packageID: Value(packageID),
      name: Value(name),
      shortDescription: Value(shortDescription),
      description: Value(description),
      contentRated: Value(contentRated),
      category: Value(category),
      platforms: Value(platforms),
      source: Value(source),
      support: Value(support),
      links: Value(links),
      reviews: Value(reviews),
      downloads: Value(downloads),
      uploadDate: Value(uploadDate),
      updateDate: Value(updateDate),
    );
  }

  factory AppTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AppTableData(
      packageID: serializer.fromJson<String>(json['packageID']),
      name: serializer.fromJson<String>(json['name']),
      shortDescription: serializer.fromJson<String>(json['shortDescription']),
      description: serializer.fromJson<String>(json['description']),
      contentRated: serializer.fromJson<String>(json['contentRated']),
      category: serializer.fromJson<String>(json['category']),
      platforms: serializer.fromJson<String>(json['platforms']),
      source: serializer.fromJson<String>(json['source']),
      support: serializer.fromJson<String>(json['support']),
      links: serializer.fromJson<String>(json['links']),
      reviews: serializer.fromJson<String>(json['reviews']),
      downloads: serializer.fromJson<int>(json['downloads']),
      uploadDate: serializer.fromJson<DateTime>(json['uploadDate']),
      updateDate: serializer.fromJson<DateTime>(json['updateDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'packageID': serializer.toJson<String>(packageID),
      'name': serializer.toJson<String>(name),
      'shortDescription': serializer.toJson<String>(shortDescription),
      'description': serializer.toJson<String>(description),
      'contentRated': serializer.toJson<String>(contentRated),
      'category': serializer.toJson<String>(category),
      'platforms': serializer.toJson<String>(platforms),
      'source': serializer.toJson<String>(source),
      'support': serializer.toJson<String>(support),
      'links': serializer.toJson<String>(links),
      'reviews': serializer.toJson<String>(reviews),
      'downloads': serializer.toJson<int>(downloads),
      'uploadDate': serializer.toJson<DateTime>(uploadDate),
      'updateDate': serializer.toJson<DateTime>(updateDate),
    };
  }

  AppTableData copyWith(
          {String? packageID,
          String? name,
          String? shortDescription,
          String? description,
          String? contentRated,
          String? category,
          String? platforms,
          String? source,
          String? support,
          String? links,
          String? reviews,
          int? downloads,
          DateTime? uploadDate,
          DateTime? updateDate}) =>
      AppTableData(
        packageID: packageID ?? this.packageID,
        name: name ?? this.name,
        shortDescription: shortDescription ?? this.shortDescription,
        description: description ?? this.description,
        contentRated: contentRated ?? this.contentRated,
        category: category ?? this.category,
        platforms: platforms ?? this.platforms,
        source: source ?? this.source,
        support: support ?? this.support,
        links: links ?? this.links,
        reviews: reviews ?? this.reviews,
        downloads: downloads ?? this.downloads,
        uploadDate: uploadDate ?? this.uploadDate,
        updateDate: updateDate ?? this.updateDate,
      );
  @override
  String toString() {
    return (StringBuffer('AppTableData(')
          ..write('packageID: $packageID, ')
          ..write('name: $name, ')
          ..write('shortDescription: $shortDescription, ')
          ..write('description: $description, ')
          ..write('contentRated: $contentRated, ')
          ..write('category: $category, ')
          ..write('platforms: $platforms, ')
          ..write('source: $source, ')
          ..write('support: $support, ')
          ..write('links: $links, ')
          ..write('reviews: $reviews, ')
          ..write('downloads: $downloads, ')
          ..write('uploadDate: $uploadDate, ')
          ..write('updateDate: $updateDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      packageID,
      name,
      shortDescription,
      description,
      contentRated,
      category,
      platforms,
      source,
      support,
      links,
      reviews,
      downloads,
      uploadDate,
      updateDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppTableData &&
          other.packageID == this.packageID &&
          other.name == this.name &&
          other.shortDescription == this.shortDescription &&
          other.description == this.description &&
          other.contentRated == this.contentRated &&
          other.category == this.category &&
          other.platforms == this.platforms &&
          other.source == this.source &&
          other.support == this.support &&
          other.links == this.links &&
          other.reviews == this.reviews &&
          other.downloads == this.downloads &&
          other.uploadDate == this.uploadDate &&
          other.updateDate == this.updateDate);
}

class AppTableCompanion extends UpdateCompanion<AppTableData> {
  final Value<String> packageID;
  final Value<String> name;
  final Value<String> shortDescription;
  final Value<String> description;
  final Value<String> contentRated;
  final Value<String> category;
  final Value<String> platforms;
  final Value<String> source;
  final Value<String> support;
  final Value<String> links;
  final Value<String> reviews;
  final Value<int> downloads;
  final Value<DateTime> uploadDate;
  final Value<DateTime> updateDate;
  final Value<int> rowid;
  const AppTableCompanion({
    this.packageID = const Value.absent(),
    this.name = const Value.absent(),
    this.shortDescription = const Value.absent(),
    this.description = const Value.absent(),
    this.contentRated = const Value.absent(),
    this.category = const Value.absent(),
    this.platforms = const Value.absent(),
    this.source = const Value.absent(),
    this.support = const Value.absent(),
    this.links = const Value.absent(),
    this.reviews = const Value.absent(),
    this.downloads = const Value.absent(),
    this.uploadDate = const Value.absent(),
    this.updateDate = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AppTableCompanion.insert({
    required String packageID,
    required String name,
    required String shortDescription,
    required String description,
    required String contentRated,
    required String category,
    required String platforms,
    required String source,
    required String support,
    required String links,
    required String reviews,
    required int downloads,
    required DateTime uploadDate,
    required DateTime updateDate,
    this.rowid = const Value.absent(),
  })  : packageID = Value(packageID),
        name = Value(name),
        shortDescription = Value(shortDescription),
        description = Value(description),
        contentRated = Value(contentRated),
        category = Value(category),
        platforms = Value(platforms),
        source = Value(source),
        support = Value(support),
        links = Value(links),
        reviews = Value(reviews),
        downloads = Value(downloads),
        uploadDate = Value(uploadDate),
        updateDate = Value(updateDate);
  static Insertable<AppTableData> custom({
    Expression<String>? packageID,
    Expression<String>? name,
    Expression<String>? shortDescription,
    Expression<String>? description,
    Expression<String>? contentRated,
    Expression<String>? category,
    Expression<String>? platforms,
    Expression<String>? source,
    Expression<String>? support,
    Expression<String>? links,
    Expression<String>? reviews,
    Expression<int>? downloads,
    Expression<DateTime>? uploadDate,
    Expression<DateTime>? updateDate,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (packageID != null) 'package_i_d': packageID,
      if (name != null) 'name': name,
      if (shortDescription != null) 'short_description': shortDescription,
      if (description != null) 'description': description,
      if (contentRated != null) 'content_rated': contentRated,
      if (category != null) 'category': category,
      if (platforms != null) 'platforms': platforms,
      if (source != null) 'source': source,
      if (support != null) 'support': support,
      if (links != null) 'links': links,
      if (reviews != null) 'reviews': reviews,
      if (downloads != null) 'downloads': downloads,
      if (uploadDate != null) 'upload_date': uploadDate,
      if (updateDate != null) 'update_date': updateDate,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AppTableCompanion copyWith(
      {Value<String>? packageID,
      Value<String>? name,
      Value<String>? shortDescription,
      Value<String>? description,
      Value<String>? contentRated,
      Value<String>? category,
      Value<String>? platforms,
      Value<String>? source,
      Value<String>? support,
      Value<String>? links,
      Value<String>? reviews,
      Value<int>? downloads,
      Value<DateTime>? uploadDate,
      Value<DateTime>? updateDate,
      Value<int>? rowid}) {
    return AppTableCompanion(
      packageID: packageID ?? this.packageID,
      name: name ?? this.name,
      shortDescription: shortDescription ?? this.shortDescription,
      description: description ?? this.description,
      contentRated: contentRated ?? this.contentRated,
      category: category ?? this.category,
      platforms: platforms ?? this.platforms,
      source: source ?? this.source,
      support: support ?? this.support,
      links: links ?? this.links,
      reviews: reviews ?? this.reviews,
      downloads: downloads ?? this.downloads,
      uploadDate: uploadDate ?? this.uploadDate,
      updateDate: updateDate ?? this.updateDate,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (packageID.present) {
      map['package_i_d'] = Variable<String>(packageID.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (shortDescription.present) {
      map['short_description'] = Variable<String>(shortDescription.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (contentRated.present) {
      map['content_rated'] = Variable<String>(contentRated.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (platforms.present) {
      map['platforms'] = Variable<String>(platforms.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (support.present) {
      map['support'] = Variable<String>(support.value);
    }
    if (links.present) {
      map['links'] = Variable<String>(links.value);
    }
    if (reviews.present) {
      map['reviews'] = Variable<String>(reviews.value);
    }
    if (downloads.present) {
      map['downloads'] = Variable<int>(downloads.value);
    }
    if (uploadDate.present) {
      map['upload_date'] = Variable<DateTime>(uploadDate.value);
    }
    if (updateDate.present) {
      map['update_date'] = Variable<DateTime>(updateDate.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AppTableCompanion(')
          ..write('packageID: $packageID, ')
          ..write('name: $name, ')
          ..write('shortDescription: $shortDescription, ')
          ..write('description: $description, ')
          ..write('contentRated: $contentRated, ')
          ..write('category: $category, ')
          ..write('platforms: $platforms, ')
          ..write('source: $source, ')
          ..write('support: $support, ')
          ..write('links: $links, ')
          ..write('reviews: $reviews, ')
          ..write('downloads: $downloads, ')
          ..write('uploadDate: $uploadDate, ')
          ..write('updateDate: $updateDate, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UserTableTable extends UserTable
    with TableInfo<$UserTableTable, UserTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _usernameMeta =
      const VerificationMeta('username');
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'username', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _activeMeta = const VerificationMeta('active');
  @override
  late final GeneratedColumn<bool> active = GeneratedColumn<bool>(
      'active', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("active" IN (0, 1))'));
  static const VerificationMeta _likedAppsMeta =
      const VerificationMeta('likedApps');
  @override
  late final GeneratedColumn<String> likedApps = GeneratedColumn<String>(
      'liked_apps', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _ownedAppsMeta =
      const VerificationMeta('ownedApps');
  @override
  late final GeneratedColumn<String> ownedApps = GeneratedColumn<String>(
      'owned_apps', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _reputationMeta =
      const VerificationMeta('reputation');
  @override
  late final GeneratedColumn<int> reputation = GeneratedColumn<int>(
      'reputation', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _strikesMeta =
      const VerificationMeta('strikes');
  @override
  late final GeneratedColumn<int> strikes = GeneratedColumn<int>(
      'strikes', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _joinedAtMeta =
      const VerificationMeta('joinedAt');
  @override
  late final GeneratedColumn<DateTime> joinedAt = GeneratedColumn<DateTime>(
      'joined_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        username,
        description,
        active,
        likedApps,
        ownedApps,
        reputation,
        strikes,
        joinedAt
      ];
  @override
  String get aliasedName => _alias ?? 'user_table';
  @override
  String get actualTableName => 'user_table';
  @override
  VerificationContext validateIntegrity(Insertable<UserTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('active')) {
      context.handle(_activeMeta,
          active.isAcceptableOrUnknown(data['active']!, _activeMeta));
    } else if (isInserting) {
      context.missing(_activeMeta);
    }
    if (data.containsKey('liked_apps')) {
      context.handle(_likedAppsMeta,
          likedApps.isAcceptableOrUnknown(data['liked_apps']!, _likedAppsMeta));
    } else if (isInserting) {
      context.missing(_likedAppsMeta);
    }
    if (data.containsKey('owned_apps')) {
      context.handle(_ownedAppsMeta,
          ownedApps.isAcceptableOrUnknown(data['owned_apps']!, _ownedAppsMeta));
    } else if (isInserting) {
      context.missing(_ownedAppsMeta);
    }
    if (data.containsKey('reputation')) {
      context.handle(
          _reputationMeta,
          reputation.isAcceptableOrUnknown(
              data['reputation']!, _reputationMeta));
    } else if (isInserting) {
      context.missing(_reputationMeta);
    }
    if (data.containsKey('strikes')) {
      context.handle(_strikesMeta,
          strikes.isAcceptableOrUnknown(data['strikes']!, _strikesMeta));
    } else if (isInserting) {
      context.missing(_strikesMeta);
    }
    if (data.containsKey('joined_at')) {
      context.handle(_joinedAtMeta,
          joinedAt.isAcceptableOrUnknown(data['joined_at']!, _joinedAtMeta));
    } else if (isInserting) {
      context.missing(_joinedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  UserTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserTableData(
      username: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}username'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      active: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}active'])!,
      likedApps: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}liked_apps'])!,
      ownedApps: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}owned_apps'])!,
      reputation: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}reputation'])!,
      strikes: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}strikes'])!,
      joinedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}joined_at'])!,
    );
  }

  @override
  $UserTableTable createAlias(String alias) {
    return $UserTableTable(attachedDatabase, alias);
  }
}

class UserTableData extends DataClass implements Insertable<UserTableData> {
  final String username;
  final String description;
  final bool active;
  final String likedApps;
  final String ownedApps;
  final int reputation;
  final int strikes;
  final DateTime joinedAt;
  const UserTableData(
      {required this.username,
      required this.description,
      required this.active,
      required this.likedApps,
      required this.ownedApps,
      required this.reputation,
      required this.strikes,
      required this.joinedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['username'] = Variable<String>(username);
    map['description'] = Variable<String>(description);
    map['active'] = Variable<bool>(active);
    map['liked_apps'] = Variable<String>(likedApps);
    map['owned_apps'] = Variable<String>(ownedApps);
    map['reputation'] = Variable<int>(reputation);
    map['strikes'] = Variable<int>(strikes);
    map['joined_at'] = Variable<DateTime>(joinedAt);
    return map;
  }

  UserTableCompanion toCompanion(bool nullToAbsent) {
    return UserTableCompanion(
      username: Value(username),
      description: Value(description),
      active: Value(active),
      likedApps: Value(likedApps),
      ownedApps: Value(ownedApps),
      reputation: Value(reputation),
      strikes: Value(strikes),
      joinedAt: Value(joinedAt),
    );
  }

  factory UserTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserTableData(
      username: serializer.fromJson<String>(json['username']),
      description: serializer.fromJson<String>(json['description']),
      active: serializer.fromJson<bool>(json['active']),
      likedApps: serializer.fromJson<String>(json['likedApps']),
      ownedApps: serializer.fromJson<String>(json['ownedApps']),
      reputation: serializer.fromJson<int>(json['reputation']),
      strikes: serializer.fromJson<int>(json['strikes']),
      joinedAt: serializer.fromJson<DateTime>(json['joinedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'username': serializer.toJson<String>(username),
      'description': serializer.toJson<String>(description),
      'active': serializer.toJson<bool>(active),
      'likedApps': serializer.toJson<String>(likedApps),
      'ownedApps': serializer.toJson<String>(ownedApps),
      'reputation': serializer.toJson<int>(reputation),
      'strikes': serializer.toJson<int>(strikes),
      'joinedAt': serializer.toJson<DateTime>(joinedAt),
    };
  }

  UserTableData copyWith(
          {String? username,
          String? description,
          bool? active,
          String? likedApps,
          String? ownedApps,
          int? reputation,
          int? strikes,
          DateTime? joinedAt}) =>
      UserTableData(
        username: username ?? this.username,
        description: description ?? this.description,
        active: active ?? this.active,
        likedApps: likedApps ?? this.likedApps,
        ownedApps: ownedApps ?? this.ownedApps,
        reputation: reputation ?? this.reputation,
        strikes: strikes ?? this.strikes,
        joinedAt: joinedAt ?? this.joinedAt,
      );
  @override
  String toString() {
    return (StringBuffer('UserTableData(')
          ..write('username: $username, ')
          ..write('description: $description, ')
          ..write('active: $active, ')
          ..write('likedApps: $likedApps, ')
          ..write('ownedApps: $ownedApps, ')
          ..write('reputation: $reputation, ')
          ..write('strikes: $strikes, ')
          ..write('joinedAt: $joinedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(username, description, active, likedApps,
      ownedApps, reputation, strikes, joinedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserTableData &&
          other.username == this.username &&
          other.description == this.description &&
          other.active == this.active &&
          other.likedApps == this.likedApps &&
          other.ownedApps == this.ownedApps &&
          other.reputation == this.reputation &&
          other.strikes == this.strikes &&
          other.joinedAt == this.joinedAt);
}

class UserTableCompanion extends UpdateCompanion<UserTableData> {
  final Value<String> username;
  final Value<String> description;
  final Value<bool> active;
  final Value<String> likedApps;
  final Value<String> ownedApps;
  final Value<int> reputation;
  final Value<int> strikes;
  final Value<DateTime> joinedAt;
  final Value<int> rowid;
  const UserTableCompanion({
    this.username = const Value.absent(),
    this.description = const Value.absent(),
    this.active = const Value.absent(),
    this.likedApps = const Value.absent(),
    this.ownedApps = const Value.absent(),
    this.reputation = const Value.absent(),
    this.strikes = const Value.absent(),
    this.joinedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserTableCompanion.insert({
    required String username,
    required String description,
    required bool active,
    required String likedApps,
    required String ownedApps,
    required int reputation,
    required int strikes,
    required DateTime joinedAt,
    this.rowid = const Value.absent(),
  })  : username = Value(username),
        description = Value(description),
        active = Value(active),
        likedApps = Value(likedApps),
        ownedApps = Value(ownedApps),
        reputation = Value(reputation),
        strikes = Value(strikes),
        joinedAt = Value(joinedAt);
  static Insertable<UserTableData> custom({
    Expression<String>? username,
    Expression<String>? description,
    Expression<bool>? active,
    Expression<String>? likedApps,
    Expression<String>? ownedApps,
    Expression<int>? reputation,
    Expression<int>? strikes,
    Expression<DateTime>? joinedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (username != null) 'username': username,
      if (description != null) 'description': description,
      if (active != null) 'active': active,
      if (likedApps != null) 'liked_apps': likedApps,
      if (ownedApps != null) 'owned_apps': ownedApps,
      if (reputation != null) 'reputation': reputation,
      if (strikes != null) 'strikes': strikes,
      if (joinedAt != null) 'joined_at': joinedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserTableCompanion copyWith(
      {Value<String>? username,
      Value<String>? description,
      Value<bool>? active,
      Value<String>? likedApps,
      Value<String>? ownedApps,
      Value<int>? reputation,
      Value<int>? strikes,
      Value<DateTime>? joinedAt,
      Value<int>? rowid}) {
    return UserTableCompanion(
      username: username ?? this.username,
      description: description ?? this.description,
      active: active ?? this.active,
      likedApps: likedApps ?? this.likedApps,
      ownedApps: ownedApps ?? this.ownedApps,
      reputation: reputation ?? this.reputation,
      strikes: strikes ?? this.strikes,
      joinedAt: joinedAt ?? this.joinedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (active.present) {
      map['active'] = Variable<bool>(active.value);
    }
    if (likedApps.present) {
      map['liked_apps'] = Variable<String>(likedApps.value);
    }
    if (ownedApps.present) {
      map['owned_apps'] = Variable<String>(ownedApps.value);
    }
    if (reputation.present) {
      map['reputation'] = Variable<int>(reputation.value);
    }
    if (strikes.present) {
      map['strikes'] = Variable<int>(strikes.value);
    }
    if (joinedAt.present) {
      map['joined_at'] = Variable<DateTime>(joinedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserTableCompanion(')
          ..write('username: $username, ')
          ..write('description: $description, ')
          ..write('active: $active, ')
          ..write('likedApps: $likedApps, ')
          ..write('ownedApps: $ownedApps, ')
          ..write('reputation: $reputation, ')
          ..write('strikes: $strikes, ')
          ..write('joinedAt: $joinedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$FusionDatabase extends GeneratedDatabase {
  _$FusionDatabase(QueryExecutor e) : super(e);
  late final $AppTableTable appTable = $AppTableTable(this);
  late final $UserTableTable userTable = $UserTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [appTable, userTable];
}
