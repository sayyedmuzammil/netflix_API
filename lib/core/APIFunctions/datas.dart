import 'dart:convert';
import 'package:http/http.dart' as http;

List upcomingList = [];
List popularList = [];
List topratedList = [];
List nowplayingList = [];
List trendingList = [];
List tvShows = [];
var upComing = Uri.parse(
    'https://api.themoviedb.org/3/movie/upcoming?api_key=9a31a0d7c3a54c8289a55b8ea1d5ddfe&language=en-US&page=1');
var toprated = Uri.parse(
    'https://api.themoviedb.org/3/movie/top_rated?api_key=9a31a0d7c3a54c8289a55b8ea1d5ddfe&language=en-US&page=1');
var nowplaying = Uri.parse(
    'https://api.themoviedb.org/3/movie/now_playing?api_key=9a31a0d7c3a54c8289a55b8ea1d5ddfe&language=en-US&page=1');
var popular = Uri.parse(
    'https://api.themoviedb.org/3/movie/popular?api_key=9a31a0d7c3a54c8289a55b8ea1d5ddfe&language=en-US&page=1');
var trending = Uri.parse(
    'https://api.themoviedb.org/3/trending/all/day?api_key=9a31a0d7c3a54c8289a55b8ea1d5ddfe');

Future getUpComming() async {
  var response = await http.get(upComing);
  Map data = json.decode(response.body);
  upcomingList = data['results'];
  return upcomingList;
}

Future getPopularMovies() async {
  var response = await http.get(popular);
  Map data = json.decode(response.body);
  popularList = data['results'];
  return popularList;
}

Future getTopRated() async {
  var response = await http.get(toprated);
  Map data = json.decode(response.body);
  topratedList = data['results'];
  return topratedList;
}

Future getNowPlaying() async {
  var response = await http.get(nowplaying);
  Map data = json.decode(response.body);
  nowplayingList = data['results'];
  return nowplayingList;
}

Future getTrending() async {
  var response = await http.get(trending);
  Map data = json.decode(response.body);
  trendingList = data['results'];
  return trendingList;
}

