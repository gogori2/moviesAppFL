
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:flutter_infinite_list/models/models.dart';

  Future<Data> fetchTopRated(int page) async {
    final http.Client httpClient=http.Client();
    final response = await httpClient.get(
        'https://api.themoviedb.org/3/movie/top_rated?api_key=71b8074926c060352de8e76e43abf6af&language=en-US&page=$page');
    if (response.statusCode == 200) {
      //print(response.body);
      //String a='{"page": 1, "total_results": 7184, "total_pages": 360, "results": [{"vote_count": 2045,"id": 19404,"video": "false","vote_average": 9,"title": "Dilwale Dulhania Le Jayenge","popularity": 14.933,"poster_path": "/uC6TTUhPpQCmgldGyYveKRAu8JN.jpg","original_language": "hi","original_title": "aaaa","genre_ids": [35,18,10749],"backdrop_path": "/nl79FQ8xWZkhL3rDr1v2RFFR6J0.jpg","adult": "false","overview": "Raj is a rich, carefree, happy-go-lucky second generation NRI. Simran is the daughter of Chaudhary Baldev Singh, who in spite of being an NRI is very strict about adherence to Indian values. Simran has left for India to be married to her childhood fiancé. Raj leaves for India with a mission at his hands, to claim his lady love under the noses of her whole family. Thus begins a saga.","release_date": "1995-10-20"}]}';
      Data _data = Data.fromJson(response.body);
      //print(_data);
      return _data;
    } else {
      throw Exception('error fetching posts');
    }
  }
  Future<Data> fetchMostPopular(int page) async {
    final http.Client httpClient=http.Client();
    final response = await httpClient.get(
        'https://api.themoviedb.org/3/movie/popular?api_key=71b8074926c060352de8e76e43abf6af&language=en-US&page=$page');
    if (response.statusCode == 200) {
      //print(response.body);
      //String a='{"page": 1, "total_results": 7184, "total_pages": 360, "results": [{"vote_count": 2045,"id": 19404,"video": "false","vote_average": 9,"title": "Dilwale Dulhania Le Jayenge","popularity": 14.933,"poster_path": "/uC6TTUhPpQCmgldGyYveKRAu8JN.jpg","original_language": "hi","original_title": "aaaa","genre_ids": [35,18,10749],"backdrop_path": "/nl79FQ8xWZkhL3rDr1v2RFFR6J0.jpg","adult": "false","overview": "Raj is a rich, carefree, happy-go-lucky second generation NRI. Simran is the daughter of Chaudhary Baldev Singh, who in spite of being an NRI is very strict about adherence to Indian values. Simran has left for India to be married to her childhood fiancé. Raj leaves for India with a mission at his hands, to claim his lady love under the noses of her whole family. Thus begins a saga.","release_date": "1995-10-20"}]}';
      Data _data = Data.fromJson(response.body);
      //print(_data);
      return _data;
    } else {
      throw Exception('error fetching posts');
    }
  }
  Future<Detail> fetchDetails(int movieId) async {
    final http.Client httpClient=http.Client();
    // print('MOVIEID: $movieId');
    final response = await httpClient.get(
        'https://api.themoviedb.org/3/movie/$movieId?api_key=71b8074926c060352de8e76e43abf6af&language=en-US');
    if (response.statusCode == 200) {
      print(response.body);
      //String a='{"page": 1, "total_results": 7184, "total_pages": 360, "results": [{"vote_count": 2045,"id": 19404,"video": "false","vote_average": 9,"title": "Dilwale Dulhania Le Jayenge","popularity": 14.933,"poster_path": "/uC6TTUhPpQCmgldGyYveKRAu8JN.jpg","original_language": "hi","original_title": "aaaa","genre_ids": [35,18,10749],"backdrop_path": "/nl79FQ8xWZkhL3rDr1v2RFFR6J0.jpg","adult": "false","overview": "Raj is a rich, carefree, happy-go-lucky second generation NRI. Simran is the daughter of Chaudhary Baldev Singh, who in spite of being an NRI is very strict about adherence to Indian values. Simran has left for India to be married to her childhood fiancé. Raj leaves for India with a mission at his hands, to claim his lady love under the noses of her whole family. Thus begins a saga.","release_date": "1995-10-20"}]}';
      Detail _data = Detail.fromJson(response.body);
      //print(_data);
      return _data;
    } else {
      throw Exception('error fetching details');
    }
  }
  Future<Data> fetchReccomended(int movieId) async {
    final http.Client httpClient=http.Client();
    final response = await httpClient.get(
        'https://api.themoviedb.org/3/movie/$movieId/recommendations?api_key=71b8074926c060352de8e76e43abf6af&language=en-US&page=1');
    if (response.statusCode == 200) {
      Data _data = Data.fromJson(response.body);
      return _data;
    } else {
      throw Exception('error fetching posts');
    }
  }