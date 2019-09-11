// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(BelongsToCollection.serializer)
      ..add(Data.serializer)
      ..add(Detail.serializer)
      ..add(Genres.serializer)
      ..add(Movies.serializer)
      ..add(ProductionCompanies.serializer)
      ..add(ProductionCountries.serializer)
      ..add(SpokenLanguages.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Genres)]),
          () => new ListBuilder<Genres>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ProductionCompanies)]),
          () => new ListBuilder<ProductionCompanies>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ProductionCountries)]),
          () => new ListBuilder<ProductionCountries>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SpokenLanguages)]),
          () => new ListBuilder<SpokenLanguages>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Movies)]),
          () => new ListBuilder<Movies>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => new ListBuilder<int>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
