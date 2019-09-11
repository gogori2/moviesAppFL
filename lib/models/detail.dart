library detail;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_infinite_list/res/serializers.dart';

part 'detail.g.dart';

abstract class Detail implements Built<Detail, DetailBuilder> {
  Detail._();

  factory Detail([updates(DetailBuilder b)]) = _$Detail;
  @nullable
  @BuiltValueField(wireName: 'adult')
  bool get adult;
  @nullable
  @BuiltValueField(wireName: 'backdrop_path')
  String get backdropPath;
  @nullable
  @BuiltValueField(wireName: 'belongs_to_collection')
  BelongsToCollection get belongsToCollection;
  @nullable
  @BuiltValueField(wireName: 'budget')
  int get budget;
  @nullable
  @BuiltValueField(wireName: 'genres')
  BuiltList<Genres> get genres;
  @nullable
  @BuiltValueField(wireName: 'homepage')
  String get homepage;
  @nullable
  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'imdb_id')
  String get imdbId;
  @nullable
  @BuiltValueField(wireName: 'original_language')
  String get originalLanguage;
  @nullable
  @BuiltValueField(wireName: 'original_title')
  String get originalTitle;
  @nullable
  @BuiltValueField(wireName: 'overview')
  String get overview;
  @nullable
  @BuiltValueField(wireName: 'popularity')
  double get popularity;
  @nullable
  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;
  @nullable
  @BuiltValueField(wireName: 'production_companies')
  BuiltList<ProductionCompanies> get productionCompanies;
  @nullable
  @BuiltValueField(wireName: 'production_countries')
  BuiltList<ProductionCountries> get productionCountries;
  @nullable
  @BuiltValueField(wireName: 'release_date')
  String get releaseDate;
  @nullable
  @BuiltValueField(wireName: 'revenue')
  int get revenue;
  @nullable
  @BuiltValueField(wireName: 'runtime')
  int get runtime;
  @nullable
  @BuiltValueField(wireName: 'spoken_languages')
  BuiltList<SpokenLanguages> get spokenLanguages;
  @nullable
  @BuiltValueField(wireName: 'status')
  String get status;
  @nullable
  @BuiltValueField(wireName: 'tagline')
  String get tagline;
  @nullable
  @BuiltValueField(wireName: 'title')
  String get title;
  @nullable
  @BuiltValueField(wireName: 'video')
  bool get video;
  @nullable
  @BuiltValueField(wireName: 'vote_average')
  double get voteAverage;
  @nullable
  @BuiltValueField(wireName: 'vote_count')
  int get voteCount;
  String toJson() {
    return json.encode(standardSerializers.serializeWith(Detail.serializer, this));
  }

  static Detail fromJson(String jsonString) {
    return standardSerializers.deserializeWith(
        Detail.serializer, json.decode(jsonString));
  }

  static Serializer<Detail> get serializer => _$detailSerializer;
}


abstract class BelongsToCollection
    implements Built<BelongsToCollection, BelongsToCollectionBuilder> {
  BelongsToCollection._();

  factory BelongsToCollection([updates(BelongsToCollectionBuilder b)]) =
      _$BelongsToCollection;
  @nullable
  @BuiltValueField(wireName: 'id')
  int get id;
  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;
  @nullable
  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;
  @nullable
  @BuiltValueField(wireName: 'backdrop_path')
  String get backdropPath;
  String toJson() {
    return json.encode(
        standardSerializers.serializeWith(BelongsToCollection.serializer, this));
  }

  static BelongsToCollection fromJson(String jsonString) {
    return standardSerializers.deserializeWith(
        BelongsToCollection.serializer, json.decode(jsonString));
  }

  static Serializer<BelongsToCollection> get serializer =>
      _$belongsToCollectionSerializer;
}

abstract class Genres implements Built<Genres, GenresBuilder> {
  Genres._();

  factory Genres([updates(GenresBuilder b)]) = _$Genres;
  @nullable
  @BuiltValueField(wireName: 'id')
  int get id;
  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;
  String toJson() {
    return json.encode(standardSerializers.serializeWith(Genres.serializer, this));
  }

  static Genres fromJson(String jsonString) {
    return standardSerializers.deserializeWith(
        Genres.serializer, json.decode(jsonString));
  }

  static Serializer<Genres> get serializer => _$genresSerializer;
}

abstract class ProductionCompanies
    implements Built<ProductionCompanies, ProductionCompaniesBuilder> {
  ProductionCompanies._();

  factory ProductionCompanies([updates(ProductionCompaniesBuilder b)]) =
      _$ProductionCompanies;

  @nullable
  @BuiltValueField(wireName: 'id')
  int get id;
  @nullable
  @BuiltValueField(wireName: 'logo_path')
  String get logoPath;
  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;
  @nullable
  @BuiltValueField(wireName: 'origin_country')
  String get originCountry;
  String toJson() {
    return json.encode(
        standardSerializers.serializeWith(ProductionCompanies.serializer, this));
  }

  static ProductionCompanies fromJson(String jsonString) {
    return standardSerializers.deserializeWith(
        ProductionCompanies.serializer, json.decode(jsonString));
  }

  static Serializer<ProductionCompanies> get serializer =>
      _$productionCompaniesSerializer;
}

abstract class ProductionCountries
    implements Built<ProductionCountries, ProductionCountriesBuilder> {
  ProductionCountries._();

  factory ProductionCountries([updates(ProductionCountriesBuilder b)]) =
      _$ProductionCountries;

  @nullable
  @BuiltValueField(wireName: 'iso_3166_1')
  String get iso31661;
  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;
  String toJson() {
    return json.encode(
        standardSerializers.serializeWith(ProductionCountries.serializer, this));
  }

  static ProductionCountries fromJson(String jsonString) {
    return standardSerializers.deserializeWith(
        ProductionCountries.serializer, json.decode(jsonString));
  }

  static Serializer<ProductionCountries> get serializer =>
      _$productionCountriesSerializer;
}

abstract class SpokenLanguages
    implements Built<SpokenLanguages, SpokenLanguagesBuilder> {
  SpokenLanguages._();

  factory SpokenLanguages([updates(SpokenLanguagesBuilder b)]) =
      _$SpokenLanguages;

  @nullable
  @BuiltValueField(wireName: 'iso_639_1')
  String get iso6391;
  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;
  String toJson() {
    return json
        .encode(standardSerializers.serializeWith(SpokenLanguages.serializer, this));
  }

  static SpokenLanguages fromJson(String jsonString) {
    return standardSerializers.deserializeWith(
        SpokenLanguages.serializer, json.decode(jsonString));
  }

  static Serializer<SpokenLanguages> get serializer =>
      _$spokenLanguagesSerializer;
}