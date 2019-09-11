// GENERATED CODE - DO NOT MODIFY BY HAND

part of detail;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Detail> _$detailSerializer = new _$DetailSerializer();
Serializer<BelongsToCollection> _$belongsToCollectionSerializer =
    new _$BelongsToCollectionSerializer();
Serializer<Genres> _$genresSerializer = new _$GenresSerializer();
Serializer<ProductionCompanies> _$productionCompaniesSerializer =
    new _$ProductionCompaniesSerializer();
Serializer<ProductionCountries> _$productionCountriesSerializer =
    new _$ProductionCountriesSerializer();
Serializer<SpokenLanguages> _$spokenLanguagesSerializer =
    new _$SpokenLanguagesSerializer();

class _$DetailSerializer implements StructuredSerializer<Detail> {
  @override
  final Iterable<Type> types = const [Detail, _$Detail];
  @override
  final String wireName = 'Detail';

  @override
  Iterable serialize(Serializers serializers, Detail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'imdb_id',
      serializers.serialize(object.imdbId,
          specifiedType: const FullType(String)),
    ];
    if (object.adult != null) {
      result
        ..add('adult')
        ..add(serializers.serialize(object.adult,
            specifiedType: const FullType(bool)));
    }
    if (object.backdropPath != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(object.backdropPath,
            specifiedType: const FullType(String)));
    }
    if (object.belongsToCollection != null) {
      result
        ..add('belongs_to_collection')
        ..add(serializers.serialize(object.belongsToCollection,
            specifiedType: const FullType(BelongsToCollection)));
    }
    if (object.budget != null) {
      result
        ..add('budget')
        ..add(serializers.serialize(object.budget,
            specifiedType: const FullType(int)));
    }
    if (object.genres != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(object.genres,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Genres)])));
    }
    if (object.homepage != null) {
      result
        ..add('homepage')
        ..add(serializers.serialize(object.homepage,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.originalLanguage != null) {
      result
        ..add('original_language')
        ..add(serializers.serialize(object.originalLanguage,
            specifiedType: const FullType(String)));
    }
    if (object.originalTitle != null) {
      result
        ..add('original_title')
        ..add(serializers.serialize(object.originalTitle,
            specifiedType: const FullType(String)));
    }
    if (object.overview != null) {
      result
        ..add('overview')
        ..add(serializers.serialize(object.overview,
            specifiedType: const FullType(String)));
    }
    if (object.popularity != null) {
      result
        ..add('popularity')
        ..add(serializers.serialize(object.popularity,
            specifiedType: const FullType(double)));
    }
    if (object.posterPath != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(object.posterPath,
            specifiedType: const FullType(String)));
    }
    if (object.productionCompanies != null) {
      result
        ..add('production_companies')
        ..add(serializers.serialize(object.productionCompanies,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ProductionCompanies)])));
    }
    if (object.productionCountries != null) {
      result
        ..add('production_countries')
        ..add(serializers.serialize(object.productionCountries,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ProductionCountries)])));
    }
    if (object.releaseDate != null) {
      result
        ..add('release_date')
        ..add(serializers.serialize(object.releaseDate,
            specifiedType: const FullType(String)));
    }
    if (object.revenue != null) {
      result
        ..add('revenue')
        ..add(serializers.serialize(object.revenue,
            specifiedType: const FullType(int)));
    }
    if (object.runtime != null) {
      result
        ..add('runtime')
        ..add(serializers.serialize(object.runtime,
            specifiedType: const FullType(int)));
    }
    if (object.spokenLanguages != null) {
      result
        ..add('spoken_languages')
        ..add(serializers.serialize(object.spokenLanguages,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SpokenLanguages)])));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.tagline != null) {
      result
        ..add('tagline')
        ..add(serializers.serialize(object.tagline,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.video != null) {
      result
        ..add('video')
        ..add(serializers.serialize(object.video,
            specifiedType: const FullType(bool)));
    }
    if (object.voteAverage != null) {
      result
        ..add('vote_average')
        ..add(serializers.serialize(object.voteAverage,
            specifiedType: const FullType(double)));
    }
    if (object.voteCount != null) {
      result
        ..add('vote_count')
        ..add(serializers.serialize(object.voteCount,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  Detail deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DetailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'backdrop_path':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'belongs_to_collection':
          result.belongsToCollection.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BelongsToCollection))
              as BelongsToCollection);
          break;
        case 'budget':
          result.budget = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Genres)]))
              as BuiltList);
          break;
        case 'homepage':
          result.homepage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'imdb_id':
          result.imdbId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_language':
          result.originalLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_title':
          result.originalTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'production_companies':
          result.productionCompanies.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ProductionCompanies)]))
              as BuiltList);
          break;
        case 'production_countries':
          result.productionCountries.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ProductionCountries)]))
              as BuiltList);
          break;
        case 'release_date':
          result.releaseDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'revenue':
          result.revenue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'runtime':
          result.runtime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'spoken_languages':
          result.spokenLanguages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SpokenLanguages)]))
              as BuiltList);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tagline':
          result.tagline = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'vote_average':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'vote_count':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BelongsToCollectionSerializer
    implements StructuredSerializer<BelongsToCollection> {
  @override
  final Iterable<Type> types = const [
    BelongsToCollection,
    _$BelongsToCollection
  ];
  @override
  final String wireName = 'BelongsToCollection';

  @override
  Iterable serialize(Serializers serializers, BelongsToCollection object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.posterPath != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(object.posterPath,
            specifiedType: const FullType(String)));
    }
    if (object.backdropPath != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(object.backdropPath,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  BelongsToCollection deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BelongsToCollectionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'backdrop_path':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GenresSerializer implements StructuredSerializer<Genres> {
  @override
  final Iterable<Type> types = const [Genres, _$Genres];
  @override
  final String wireName = 'Genres';

  @override
  Iterable serialize(Serializers serializers, Genres object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Genres deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenresBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductionCompaniesSerializer
    implements StructuredSerializer<ProductionCompanies> {
  @override
  final Iterable<Type> types = const [
    ProductionCompanies,
    _$ProductionCompanies
  ];
  @override
  final String wireName = 'ProductionCompanies';

  @override
  Iterable serialize(Serializers serializers, ProductionCompanies object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.logoPath != null) {
      result
        ..add('logo_path')
        ..add(serializers.serialize(object.logoPath,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.originCountry != null) {
      result
        ..add('origin_country')
        ..add(serializers.serialize(object.originCountry,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  ProductionCompanies deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductionCompaniesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'logo_path':
          result.logoPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'origin_country':
          result.originCountry = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductionCountriesSerializer
    implements StructuredSerializer<ProductionCountries> {
  @override
  final Iterable<Type> types = const [
    ProductionCountries,
    _$ProductionCountries
  ];
  @override
  final String wireName = 'ProductionCountries';

  @override
  Iterable serialize(Serializers serializers, ProductionCountries object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.iso31661 != null) {
      result
        ..add('iso_3166_1')
        ..add(serializers.serialize(object.iso31661,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  ProductionCountries deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductionCountriesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'iso_3166_1':
          result.iso31661 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SpokenLanguagesSerializer
    implements StructuredSerializer<SpokenLanguages> {
  @override
  final Iterable<Type> types = const [SpokenLanguages, _$SpokenLanguages];
  @override
  final String wireName = 'SpokenLanguages';

  @override
  Iterable serialize(Serializers serializers, SpokenLanguages object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.iso6391 != null) {
      result
        ..add('iso_639_1')
        ..add(serializers.serialize(object.iso6391,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  SpokenLanguages deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SpokenLanguagesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'iso_639_1':
          result.iso6391 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Detail extends Detail {
  @override
  final bool adult;
  @override
  final String backdropPath;
  @override
  final BelongsToCollection belongsToCollection;
  @override
  final int budget;
  @override
  final BuiltList<Genres> genres;
  @override
  final String homepage;
  @override
  final int id;
  @override
  final String imdbId;
  @override
  final String originalLanguage;
  @override
  final String originalTitle;
  @override
  final String overview;
  @override
  final double popularity;
  @override
  final String posterPath;
  @override
  final BuiltList<ProductionCompanies> productionCompanies;
  @override
  final BuiltList<ProductionCountries> productionCountries;
  @override
  final String releaseDate;
  @override
  final int revenue;
  @override
  final int runtime;
  @override
  final BuiltList<SpokenLanguages> spokenLanguages;
  @override
  final String status;
  @override
  final String tagline;
  @override
  final String title;
  @override
  final bool video;
  @override
  final double voteAverage;
  @override
  final int voteCount;

  factory _$Detail([void Function(DetailBuilder) updates]) =>
      (new DetailBuilder()..update(updates)).build();

  _$Detail._(
      {this.adult,
      this.backdropPath,
      this.belongsToCollection,
      this.budget,
      this.genres,
      this.homepage,
      this.id,
      this.imdbId,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.productionCompanies,
      this.productionCountries,
      this.releaseDate,
      this.revenue,
      this.runtime,
      this.spokenLanguages,
      this.status,
      this.tagline,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount})
      : super._() {
    if (imdbId == null) {
      throw new BuiltValueNullFieldError('Detail', 'imdbId');
    }
  }

  @override
  Detail rebuild(void Function(DetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailBuilder toBuilder() => new DetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Detail &&
        adult == other.adult &&
        backdropPath == other.backdropPath &&
        belongsToCollection == other.belongsToCollection &&
        budget == other.budget &&
        genres == other.genres &&
        homepage == other.homepage &&
        id == other.id &&
        imdbId == other.imdbId &&
        originalLanguage == other.originalLanguage &&
        originalTitle == other.originalTitle &&
        overview == other.overview &&
        popularity == other.popularity &&
        posterPath == other.posterPath &&
        productionCompanies == other.productionCompanies &&
        productionCountries == other.productionCountries &&
        releaseDate == other.releaseDate &&
        revenue == other.revenue &&
        runtime == other.runtime &&
        spokenLanguages == other.spokenLanguages &&
        status == other.status &&
        tagline == other.tagline &&
        title == other.title &&
        video == other.video &&
        voteAverage == other.voteAverage &&
        voteCount == other.voteCount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc(0, adult.hashCode), backdropPath.hashCode), belongsToCollection.hashCode), budget.hashCode), genres.hashCode), homepage.hashCode),
                                                                                id.hashCode),
                                                                            imdbId.hashCode),
                                                                        originalLanguage.hashCode),
                                                                    originalTitle.hashCode),
                                                                overview.hashCode),
                                                            popularity.hashCode),
                                                        posterPath.hashCode),
                                                    productionCompanies.hashCode),
                                                productionCountries.hashCode),
                                            releaseDate.hashCode),
                                        revenue.hashCode),
                                    runtime.hashCode),
                                spokenLanguages.hashCode),
                            status.hashCode),
                        tagline.hashCode),
                    title.hashCode),
                video.hashCode),
            voteAverage.hashCode),
        voteCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Detail')
          ..add('adult', adult)
          ..add('backdropPath', backdropPath)
          ..add('belongsToCollection', belongsToCollection)
          ..add('budget', budget)
          ..add('genres', genres)
          ..add('homepage', homepage)
          ..add('id', id)
          ..add('imdbId', imdbId)
          ..add('originalLanguage', originalLanguage)
          ..add('originalTitle', originalTitle)
          ..add('overview', overview)
          ..add('popularity', popularity)
          ..add('posterPath', posterPath)
          ..add('productionCompanies', productionCompanies)
          ..add('productionCountries', productionCountries)
          ..add('releaseDate', releaseDate)
          ..add('revenue', revenue)
          ..add('runtime', runtime)
          ..add('spokenLanguages', spokenLanguages)
          ..add('status', status)
          ..add('tagline', tagline)
          ..add('title', title)
          ..add('video', video)
          ..add('voteAverage', voteAverage)
          ..add('voteCount', voteCount))
        .toString();
  }
}

class DetailBuilder implements Builder<Detail, DetailBuilder> {
  _$Detail _$v;

  bool _adult;
  bool get adult => _$this._adult;
  set adult(bool adult) => _$this._adult = adult;

  String _backdropPath;
  String get backdropPath => _$this._backdropPath;
  set backdropPath(String backdropPath) => _$this._backdropPath = backdropPath;

  BelongsToCollectionBuilder _belongsToCollection;
  BelongsToCollectionBuilder get belongsToCollection =>
      _$this._belongsToCollection ??= new BelongsToCollectionBuilder();
  set belongsToCollection(BelongsToCollectionBuilder belongsToCollection) =>
      _$this._belongsToCollection = belongsToCollection;

  int _budget;
  int get budget => _$this._budget;
  set budget(int budget) => _$this._budget = budget;

  ListBuilder<Genres> _genres;
  ListBuilder<Genres> get genres =>
      _$this._genres ??= new ListBuilder<Genres>();
  set genres(ListBuilder<Genres> genres) => _$this._genres = genres;

  String _homepage;
  String get homepage => _$this._homepage;
  set homepage(String homepage) => _$this._homepage = homepage;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _imdbId;
  String get imdbId => _$this._imdbId;
  set imdbId(String imdbId) => _$this._imdbId = imdbId;

  String _originalLanguage;
  String get originalLanguage => _$this._originalLanguage;
  set originalLanguage(String originalLanguage) =>
      _$this._originalLanguage = originalLanguage;

  String _originalTitle;
  String get originalTitle => _$this._originalTitle;
  set originalTitle(String originalTitle) =>
      _$this._originalTitle = originalTitle;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  double _popularity;
  double get popularity => _$this._popularity;
  set popularity(double popularity) => _$this._popularity = popularity;

  String _posterPath;
  String get posterPath => _$this._posterPath;
  set posterPath(String posterPath) => _$this._posterPath = posterPath;

  ListBuilder<ProductionCompanies> _productionCompanies;
  ListBuilder<ProductionCompanies> get productionCompanies =>
      _$this._productionCompanies ??= new ListBuilder<ProductionCompanies>();
  set productionCompanies(
          ListBuilder<ProductionCompanies> productionCompanies) =>
      _$this._productionCompanies = productionCompanies;

  ListBuilder<ProductionCountries> _productionCountries;
  ListBuilder<ProductionCountries> get productionCountries =>
      _$this._productionCountries ??= new ListBuilder<ProductionCountries>();
  set productionCountries(
          ListBuilder<ProductionCountries> productionCountries) =>
      _$this._productionCountries = productionCountries;

  String _releaseDate;
  String get releaseDate => _$this._releaseDate;
  set releaseDate(String releaseDate) => _$this._releaseDate = releaseDate;

  int _revenue;
  int get revenue => _$this._revenue;
  set revenue(int revenue) => _$this._revenue = revenue;

  int _runtime;
  int get runtime => _$this._runtime;
  set runtime(int runtime) => _$this._runtime = runtime;

  ListBuilder<SpokenLanguages> _spokenLanguages;
  ListBuilder<SpokenLanguages> get spokenLanguages =>
      _$this._spokenLanguages ??= new ListBuilder<SpokenLanguages>();
  set spokenLanguages(ListBuilder<SpokenLanguages> spokenLanguages) =>
      _$this._spokenLanguages = spokenLanguages;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _tagline;
  String get tagline => _$this._tagline;
  set tagline(String tagline) => _$this._tagline = tagline;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  bool _video;
  bool get video => _$this._video;
  set video(bool video) => _$this._video = video;

  double _voteAverage;
  double get voteAverage => _$this._voteAverage;
  set voteAverage(double voteAverage) => _$this._voteAverage = voteAverage;

  int _voteCount;
  int get voteCount => _$this._voteCount;
  set voteCount(int voteCount) => _$this._voteCount = voteCount;

  DetailBuilder();

  DetailBuilder get _$this {
    if (_$v != null) {
      _adult = _$v.adult;
      _backdropPath = _$v.backdropPath;
      _belongsToCollection = _$v.belongsToCollection?.toBuilder();
      _budget = _$v.budget;
      _genres = _$v.genres?.toBuilder();
      _homepage = _$v.homepage;
      _id = _$v.id;
      _imdbId = _$v.imdbId;
      _originalLanguage = _$v.originalLanguage;
      _originalTitle = _$v.originalTitle;
      _overview = _$v.overview;
      _popularity = _$v.popularity;
      _posterPath = _$v.posterPath;
      _productionCompanies = _$v.productionCompanies?.toBuilder();
      _productionCountries = _$v.productionCountries?.toBuilder();
      _releaseDate = _$v.releaseDate;
      _revenue = _$v.revenue;
      _runtime = _$v.runtime;
      _spokenLanguages = _$v.spokenLanguages?.toBuilder();
      _status = _$v.status;
      _tagline = _$v.tagline;
      _title = _$v.title;
      _video = _$v.video;
      _voteAverage = _$v.voteAverage;
      _voteCount = _$v.voteCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Detail other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Detail;
  }

  @override
  void update(void Function(DetailBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Detail build() {
    _$Detail _$result;
    try {
      _$result = _$v ??
          new _$Detail._(
              adult: adult,
              backdropPath: backdropPath,
              belongsToCollection: _belongsToCollection?.build(),
              budget: budget,
              genres: _genres?.build(),
              homepage: homepage,
              id: id,
              imdbId: imdbId,
              originalLanguage: originalLanguage,
              originalTitle: originalTitle,
              overview: overview,
              popularity: popularity,
              posterPath: posterPath,
              productionCompanies: _productionCompanies?.build(),
              productionCountries: _productionCountries?.build(),
              releaseDate: releaseDate,
              revenue: revenue,
              runtime: runtime,
              spokenLanguages: _spokenLanguages?.build(),
              status: status,
              tagline: tagline,
              title: title,
              video: video,
              voteAverage: voteAverage,
              voteCount: voteCount);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'belongsToCollection';
        _belongsToCollection?.build();

        _$failedField = 'genres';
        _genres?.build();

        _$failedField = 'productionCompanies';
        _productionCompanies?.build();
        _$failedField = 'productionCountries';
        _productionCountries?.build();

        _$failedField = 'spokenLanguages';
        _spokenLanguages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Detail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BelongsToCollection extends BelongsToCollection {
  @override
  final int id;
  @override
  final String name;
  @override
  final String posterPath;
  @override
  final String backdropPath;

  factory _$BelongsToCollection(
          [void Function(BelongsToCollectionBuilder) updates]) =>
      (new BelongsToCollectionBuilder()..update(updates)).build();

  _$BelongsToCollection._(
      {this.id, this.name, this.posterPath, this.backdropPath})
      : super._();

  @override
  BelongsToCollection rebuild(
          void Function(BelongsToCollectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BelongsToCollectionBuilder toBuilder() =>
      new BelongsToCollectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BelongsToCollection &&
        id == other.id &&
        name == other.name &&
        posterPath == other.posterPath &&
        backdropPath == other.backdropPath;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), name.hashCode), posterPath.hashCode),
        backdropPath.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BelongsToCollection')
          ..add('id', id)
          ..add('name', name)
          ..add('posterPath', posterPath)
          ..add('backdropPath', backdropPath))
        .toString();
  }
}

class BelongsToCollectionBuilder
    implements Builder<BelongsToCollection, BelongsToCollectionBuilder> {
  _$BelongsToCollection _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _posterPath;
  String get posterPath => _$this._posterPath;
  set posterPath(String posterPath) => _$this._posterPath = posterPath;

  String _backdropPath;
  String get backdropPath => _$this._backdropPath;
  set backdropPath(String backdropPath) => _$this._backdropPath = backdropPath;

  BelongsToCollectionBuilder();

  BelongsToCollectionBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _posterPath = _$v.posterPath;
      _backdropPath = _$v.backdropPath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BelongsToCollection other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BelongsToCollection;
  }

  @override
  void update(void Function(BelongsToCollectionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BelongsToCollection build() {
    final _$result = _$v ??
        new _$BelongsToCollection._(
            id: id,
            name: name,
            posterPath: posterPath,
            backdropPath: backdropPath);
    replace(_$result);
    return _$result;
  }
}

class _$Genres extends Genres {
  @override
  final int id;
  @override
  final String name;

  factory _$Genres([void Function(GenresBuilder) updates]) =>
      (new GenresBuilder()..update(updates)).build();

  _$Genres._({this.id, this.name}) : super._();

  @override
  Genres rebuild(void Function(GenresBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenresBuilder toBuilder() => new GenresBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Genres && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Genres')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GenresBuilder implements Builder<Genres, GenresBuilder> {
  _$Genres _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  GenresBuilder();

  GenresBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Genres other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Genres;
  }

  @override
  void update(void Function(GenresBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Genres build() {
    final _$result = _$v ?? new _$Genres._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

class _$ProductionCompanies extends ProductionCompanies {
  @override
  final int id;
  @override
  final String logoPath;
  @override
  final String name;
  @override
  final String originCountry;

  factory _$ProductionCompanies(
          [void Function(ProductionCompaniesBuilder) updates]) =>
      (new ProductionCompaniesBuilder()..update(updates)).build();

  _$ProductionCompanies._(
      {this.id, this.logoPath, this.name, this.originCountry})
      : super._();

  @override
  ProductionCompanies rebuild(
          void Function(ProductionCompaniesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductionCompaniesBuilder toBuilder() =>
      new ProductionCompaniesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductionCompanies &&
        id == other.id &&
        logoPath == other.logoPath &&
        name == other.name &&
        originCountry == other.originCountry;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), logoPath.hashCode), name.hashCode),
        originCountry.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductionCompanies')
          ..add('id', id)
          ..add('logoPath', logoPath)
          ..add('name', name)
          ..add('originCountry', originCountry))
        .toString();
  }
}

class ProductionCompaniesBuilder
    implements Builder<ProductionCompanies, ProductionCompaniesBuilder> {
  _$ProductionCompanies _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _logoPath;
  String get logoPath => _$this._logoPath;
  set logoPath(String logoPath) => _$this._logoPath = logoPath;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _originCountry;
  String get originCountry => _$this._originCountry;
  set originCountry(String originCountry) =>
      _$this._originCountry = originCountry;

  ProductionCompaniesBuilder();

  ProductionCompaniesBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _logoPath = _$v.logoPath;
      _name = _$v.name;
      _originCountry = _$v.originCountry;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductionCompanies other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductionCompanies;
  }

  @override
  void update(void Function(ProductionCompaniesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductionCompanies build() {
    final _$result = _$v ??
        new _$ProductionCompanies._(
            id: id,
            logoPath: logoPath,
            name: name,
            originCountry: originCountry);
    replace(_$result);
    return _$result;
  }
}

class _$ProductionCountries extends ProductionCountries {
  @override
  final String iso31661;
  @override
  final String name;

  factory _$ProductionCountries(
          [void Function(ProductionCountriesBuilder) updates]) =>
      (new ProductionCountriesBuilder()..update(updates)).build();

  _$ProductionCountries._({this.iso31661, this.name}) : super._();

  @override
  ProductionCountries rebuild(
          void Function(ProductionCountriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductionCountriesBuilder toBuilder() =>
      new ProductionCountriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductionCountries &&
        iso31661 == other.iso31661 &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, iso31661.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductionCountries')
          ..add('iso31661', iso31661)
          ..add('name', name))
        .toString();
  }
}

class ProductionCountriesBuilder
    implements Builder<ProductionCountries, ProductionCountriesBuilder> {
  _$ProductionCountries _$v;

  String _iso31661;
  String get iso31661 => _$this._iso31661;
  set iso31661(String iso31661) => _$this._iso31661 = iso31661;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ProductionCountriesBuilder();

  ProductionCountriesBuilder get _$this {
    if (_$v != null) {
      _iso31661 = _$v.iso31661;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductionCountries other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductionCountries;
  }

  @override
  void update(void Function(ProductionCountriesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductionCountries build() {
    final _$result =
        _$v ?? new _$ProductionCountries._(iso31661: iso31661, name: name);
    replace(_$result);
    return _$result;
  }
}

class _$SpokenLanguages extends SpokenLanguages {
  @override
  final String iso6391;
  @override
  final String name;

  factory _$SpokenLanguages([void Function(SpokenLanguagesBuilder) updates]) =>
      (new SpokenLanguagesBuilder()..update(updates)).build();

  _$SpokenLanguages._({this.iso6391, this.name}) : super._();

  @override
  SpokenLanguages rebuild(void Function(SpokenLanguagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpokenLanguagesBuilder toBuilder() =>
      new SpokenLanguagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpokenLanguages &&
        iso6391 == other.iso6391 &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, iso6391.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SpokenLanguages')
          ..add('iso6391', iso6391)
          ..add('name', name))
        .toString();
  }
}

class SpokenLanguagesBuilder
    implements Builder<SpokenLanguages, SpokenLanguagesBuilder> {
  _$SpokenLanguages _$v;

  String _iso6391;
  String get iso6391 => _$this._iso6391;
  set iso6391(String iso6391) => _$this._iso6391 = iso6391;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  SpokenLanguagesBuilder();

  SpokenLanguagesBuilder get _$this {
    if (_$v != null) {
      _iso6391 = _$v.iso6391;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpokenLanguages other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SpokenLanguages;
  }

  @override
  void update(void Function(SpokenLanguagesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SpokenLanguages build() {
    final _$result =
        _$v ?? new _$SpokenLanguages._(iso6391: iso6391, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
