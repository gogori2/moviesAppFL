library data;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_infinite_list/res/serializers.dart';

part 'movie.g.dart';

abstract class Data implements Built<Data, DataBuilder> {
  Data._();

  factory Data([updates(DataBuilder b)]) = _$Data;

  @BuiltValueField(wireName: 'page')
  int get page;
  @BuiltValueField(wireName: 'total_results')
  int get totalMovies;
  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;
  @BuiltValueField(wireName: 'results')
  BuiltList<Movies> get movies;
  String toJson() {
    return json.encode(standardSerializers.serializeWith(Data.serializer, this));
  }

  static Data fromJson(String jsonString) {
    return standardSerializers.deserializeWith(
        Data.serializer, json.decode(jsonString));
  }

  static Serializer<Data> get serializer => _$dataSerializer;
}

abstract class Movies implements Built<Movies, MoviesBuilder> {
  Movies._();

  factory Movies([updates(MoviesBuilder b)]) = _$Movies;
  @nullable
  @BuiltValueField(wireName: 'vote_count')
  int get voteCount;
  @nullable
  @BuiltValueField(wireName: 'id')
  int get id;
  @nullable
  @BuiltValueField(wireName: 'video')
  bool get video;
  @nullable
  @BuiltValueField(wireName: 'vote_average')
  double get voteAverage;
  @nullable
  @BuiltValueField(wireName: 'title')
  String get title;
  @nullable
  @BuiltValueField(wireName: 'popularity')
  double get popularity;
  @nullable
  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;
  @nullable
  @BuiltValueField(wireName: 'original_language')
  String get originalLanguage;
  @nullable
  @BuiltValueField(wireName: 'original_title')
  String get originalTitle;
  @nullable
  @BuiltValueField(wireName: 'genre_ids')
  BuiltList<int> get genreIds;
  @nullable
  @BuiltValueField(wireName: 'backdrop_path')
  String get backdropPath;
  @nullable
  @BuiltValueField(wireName: 'adult')
  bool get adult;
  @nullable
  @BuiltValueField(wireName: 'overview')
  String get overview;
  @nullable
  @BuiltValueField(wireName: 'release_date')
  String get releaseDate;   
  String toJson() {
    return json.encode(standardSerializers.serializeWith(Movies.serializer, this));
  }

  static Movies fromJson(String jsonString) {
    return standardSerializers.deserializeWith(
        Movies.serializer, json.decode(jsonString));
  }

  static Serializer<Movies> get serializer => _$moviesSerializer;
}
