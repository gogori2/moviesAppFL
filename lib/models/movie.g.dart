// GENERATED CODE - DO NOT MODIFY BY HAND

part of data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Data> _$dataSerializer = new _$DataSerializer();
Serializer<Movies> _$moviesSerializer = new _$MoviesSerializer();

class _$DataSerializer implements StructuredSerializer<Data> {
  @override
  final Iterable<Type> types = const [Data, _$Data];
  @override
  final String wireName = 'Data';

  @override
  Iterable serialize(Serializers serializers, Data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'total_results',
      serializers.serialize(object.totalMovies,
          specifiedType: const FullType(int)),
      'total_pages',
      serializers.serialize(object.totalPages,
          specifiedType: const FullType(int)),
      'results',
      serializers.serialize(object.movies,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Movies)])),
    ];

    return result;
  }

  @override
  Data deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_results':
          result.totalMovies = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_pages':
          result.totalPages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'results':
          result.movies.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Movies)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$MoviesSerializer implements StructuredSerializer<Movies> {
  @override
  final Iterable<Type> types = const [Movies, _$Movies];
  @override
  final String wireName = 'Movies';

  @override
  Iterable serialize(Serializers serializers, Movies object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.voteCount != null) {
      result
        ..add('vote_count')
        ..add(serializers.serialize(object.voteCount,
            specifiedType: const FullType(int)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
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
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
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
    if (object.genreIds != null) {
      result
        ..add('genre_ids')
        ..add(serializers.serialize(object.genreIds,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    if (object.backdropPath != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(object.backdropPath,
            specifiedType: const FullType(String)));
    }
    if (object.adult != null) {
      result
        ..add('adult')
        ..add(serializers.serialize(object.adult,
            specifiedType: const FullType(bool)));
    }
    if (object.overview != null) {
      result
        ..add('overview')
        ..add(serializers.serialize(object.overview,
            specifiedType: const FullType(String)));
    }
    if (object.releaseDate != null) {
      result
        ..add('release_date')
        ..add(serializers.serialize(object.releaseDate,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Movies deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MoviesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'vote_count':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'vote_average':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
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
        case 'original_language':
          result.originalLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_title':
          result.originalTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'genre_ids':
          result.genreIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList);
          break;
        case 'backdrop_path':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'release_date':
          result.releaseDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Data extends Data {
  @override
  final int page;
  @override
  final int totalMovies;
  @override
  final int totalPages;
  @override
  final BuiltList<Movies> movies;

  factory _$Data([void Function(DataBuilder) updates]) =>
      (new DataBuilder()..update(updates)).build();

  _$Data._({this.page, this.totalMovies, this.totalPages, this.movies})
      : super._() {
    if (page == null) {
      throw new BuiltValueNullFieldError('Data', 'page');
    }
    if (totalMovies == null) {
      throw new BuiltValueNullFieldError('Data', 'totalMovies');
    }
    if (totalPages == null) {
      throw new BuiltValueNullFieldError('Data', 'totalPages');
    }
    if (movies == null) {
      throw new BuiltValueNullFieldError('Data', 'movies');
    }
  }

  @override
  Data rebuild(void Function(DataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataBuilder toBuilder() => new DataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Data &&
        page == other.page &&
        totalMovies == other.totalMovies &&
        totalPages == other.totalPages &&
        movies == other.movies;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, page.hashCode), totalMovies.hashCode),
            totalPages.hashCode),
        movies.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Data')
          ..add('page', page)
          ..add('totalMovies', totalMovies)
          ..add('totalPages', totalPages)
          ..add('movies', movies))
        .toString();
  }
}

class DataBuilder implements Builder<Data, DataBuilder> {
  _$Data _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  int _totalMovies;
  int get totalMovies => _$this._totalMovies;
  set totalMovies(int totalMovies) => _$this._totalMovies = totalMovies;

  int _totalPages;
  int get totalPages => _$this._totalPages;
  set totalPages(int totalPages) => _$this._totalPages = totalPages;

  ListBuilder<Movies> _movies;
  ListBuilder<Movies> get movies =>
      _$this._movies ??= new ListBuilder<Movies>();
  set movies(ListBuilder<Movies> movies) => _$this._movies = movies;

  DataBuilder();

  DataBuilder get _$this {
    if (_$v != null) {
      _page = _$v.page;
      _totalMovies = _$v.totalMovies;
      _totalPages = _$v.totalPages;
      _movies = _$v.movies?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Data other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Data;
  }

  @override
  void update(void Function(DataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Data build() {
    _$Data _$result;
    try {
      _$result = _$v ??
          new _$Data._(
              page: page,
              totalMovies: totalMovies,
              totalPages: totalPages,
              movies: movies.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'movies';
        movies.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Movies extends Movies {
  @override
  final int voteCount;
  @override
  final int id;
  @override
  final bool video;
  @override
  final double voteAverage;
  @override
  final String title;
  @override
  final double popularity;
  @override
  final String posterPath;
  @override
  final String originalLanguage;
  @override
  final String originalTitle;
  @override
  final BuiltList<int> genreIds;
  @override
  final String backdropPath;
  @override
  final bool adult;
  @override
  final String overview;
  @override
  final String releaseDate;

  factory _$Movies([void Function(MoviesBuilder) updates]) =>
      (new MoviesBuilder()..update(updates)).build();

  _$Movies._(
      {this.voteCount,
      this.id,
      this.video,
      this.voteAverage,
      this.title,
      this.popularity,
      this.posterPath,
      this.originalLanguage,
      this.originalTitle,
      this.genreIds,
      this.backdropPath,
      this.adult,
      this.overview,
      this.releaseDate})
      : super._();

  @override
  Movies rebuild(void Function(MoviesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MoviesBuilder toBuilder() => new MoviesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Movies &&
        voteCount == other.voteCount &&
        id == other.id &&
        video == other.video &&
        voteAverage == other.voteAverage &&
        title == other.title &&
        popularity == other.popularity &&
        posterPath == other.posterPath &&
        originalLanguage == other.originalLanguage &&
        originalTitle == other.originalTitle &&
        genreIds == other.genreIds &&
        backdropPath == other.backdropPath &&
        adult == other.adult &&
        overview == other.overview &&
        releaseDate == other.releaseDate;
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
                                                        $jc(0,
                                                            voteCount.hashCode),
                                                        id.hashCode),
                                                    video.hashCode),
                                                voteAverage.hashCode),
                                            title.hashCode),
                                        popularity.hashCode),
                                    posterPath.hashCode),
                                originalLanguage.hashCode),
                            originalTitle.hashCode),
                        genreIds.hashCode),
                    backdropPath.hashCode),
                adult.hashCode),
            overview.hashCode),
        releaseDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Movies')
          ..add('voteCount', voteCount)
          ..add('id', id)
          ..add('video', video)
          ..add('voteAverage', voteAverage)
          ..add('title', title)
          ..add('popularity', popularity)
          ..add('posterPath', posterPath)
          ..add('originalLanguage', originalLanguage)
          ..add('originalTitle', originalTitle)
          ..add('genreIds', genreIds)
          ..add('backdropPath', backdropPath)
          ..add('adult', adult)
          ..add('overview', overview)
          ..add('releaseDate', releaseDate))
        .toString();
  }
}

class MoviesBuilder implements Builder<Movies, MoviesBuilder> {
  _$Movies _$v;

  int _voteCount;
  int get voteCount => _$this._voteCount;
  set voteCount(int voteCount) => _$this._voteCount = voteCount;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  bool _video;
  bool get video => _$this._video;
  set video(bool video) => _$this._video = video;

  double _voteAverage;
  double get voteAverage => _$this._voteAverage;
  set voteAverage(double voteAverage) => _$this._voteAverage = voteAverage;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  double _popularity;
  double get popularity => _$this._popularity;
  set popularity(double popularity) => _$this._popularity = popularity;

  String _posterPath;
  String get posterPath => _$this._posterPath;
  set posterPath(String posterPath) => _$this._posterPath = posterPath;

  String _originalLanguage;
  String get originalLanguage => _$this._originalLanguage;
  set originalLanguage(String originalLanguage) =>
      _$this._originalLanguage = originalLanguage;

  String _originalTitle;
  String get originalTitle => _$this._originalTitle;
  set originalTitle(String originalTitle) =>
      _$this._originalTitle = originalTitle;

  ListBuilder<int> _genreIds;
  ListBuilder<int> get genreIds => _$this._genreIds ??= new ListBuilder<int>();
  set genreIds(ListBuilder<int> genreIds) => _$this._genreIds = genreIds;

  String _backdropPath;
  String get backdropPath => _$this._backdropPath;
  set backdropPath(String backdropPath) => _$this._backdropPath = backdropPath;

  bool _adult;
  bool get adult => _$this._adult;
  set adult(bool adult) => _$this._adult = adult;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  String _releaseDate;
  String get releaseDate => _$this._releaseDate;
  set releaseDate(String releaseDate) => _$this._releaseDate = releaseDate;

  MoviesBuilder();

  MoviesBuilder get _$this {
    if (_$v != null) {
      _voteCount = _$v.voteCount;
      _id = _$v.id;
      _video = _$v.video;
      _voteAverage = _$v.voteAverage;
      _title = _$v.title;
      _popularity = _$v.popularity;
      _posterPath = _$v.posterPath;
      _originalLanguage = _$v.originalLanguage;
      _originalTitle = _$v.originalTitle;
      _genreIds = _$v.genreIds?.toBuilder();
      _backdropPath = _$v.backdropPath;
      _adult = _$v.adult;
      _overview = _$v.overview;
      _releaseDate = _$v.releaseDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Movies other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Movies;
  }

  @override
  void update(void Function(MoviesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Movies build() {
    _$Movies _$result;
    try {
      _$result = _$v ??
          new _$Movies._(
              voteCount: voteCount,
              id: id,
              video: video,
              voteAverage: voteAverage,
              title: title,
              popularity: popularity,
              posterPath: posterPath,
              originalLanguage: originalLanguage,
              originalTitle: originalTitle,
              genreIds: _genreIds?.build(),
              backdropPath: backdropPath,
              adult: adult,
              overview: overview,
              releaseDate: releaseDate);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'genreIds';
        _genreIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Movies', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
