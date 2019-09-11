import 'dart:async';

import 'package:flutter_infinite_list/models/models.dart';
import 'movie_api_provider.dart';

Future<Data> getTopRated(int page) async {
  return await fetchTopRated(page);
}

Future<Data> getMostPopular(int page) async {
  return await fetchMostPopular(page);
}

Future<Detail> getDetails(int movieId) async {
  return await fetchDetails(movieId);
}

Future<Data> getRecommended(int movieId) async {
  return await fetchReccomended(movieId);
}