import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_infinite_list/bloc/bloc.dart';
import 'package:flutter_infinite_list/models/models.dart';

class DetailScreen extends StatelessWidget {
  final int movieid;
  DetailScreen({Key key, @required this.movieid}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //print("POST_ID DetailScreen: $movieid");
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: HomeScreen(
        movieId: movieid,
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  final int movieId;
  HomeScreen({Key key, this.movieId}) : super(key: key);

  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final DetailBloc _detailBloc = DetailBloc();

  @override
  void initState() {
    super.initState();
    //print("movie_ID HOMESCREEN: ${widget.movieId}");
    _detailBloc.dispatch(FetchDetailEvent(widget.movieId));
  }

  @override
  void dispose() {
    _detailBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProviderTree(blocProviders: [
      BlocProvider<DetailBloc>(bloc: _detailBloc),
    ], child: DetailWidget());
  }
}

class DetailWidget extends StatefulWidget {
  @override
  _DetailWidgetState createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  DetailBloc _detailBloc;

  _DetailWidgetState() {
    //_scrollController.addListener(_onScroll);
  }

  @override
  void initState() {
    super.initState();
    _detailBloc = BlocProvider.of<DetailBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _detailBloc,
      builder: (BuildContext context, DetailState state) {
        if (state is DetailUninitialized) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is DetailError) {
          return Center(
            child: Text('failed to fetch posts'),
          );
        }
        if (state is DetailLoaded) {
          // moje :S
          if (state.details.id == null) {
            return Center(
              child: Text('no details'),
            );
          }
          return Page(
              movie: state.details, recommendations: state.recommendations);
        }
        return Container();
      },
    );
  }
}

class Page extends StatelessWidget {
  final Detail movie;
  final List<Movies> recommendations;
  const Page({Key key, @required this.movie, @required this.recommendations})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Column(
            children: <Widget>[
              FadeInImage(
                // height: 200.0, // Change it to your need
                // width: 300.0, // Change it to your need
                fit: BoxFit.cover,
                placeholder: AssetImage("assets/placeholder.png"),
                image: NetworkImage(
                    'https://image.tmdb.org/t/p/w1280/${movie.backdropPath}'),
              ),
              TitleAndPoster(movie: movie),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, right: 8.0, left: 8.0, bottom: 30.0),
                      child: Text(
                        movie.overview,
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
              RecommendationsContainer(recommendations: recommendations),
              RaisedButton(
                child: Text('Go back!'),
                onPressed: () {
                  //_blocDetail.dispatch(FetchDetailEvent(9760));
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TitleAndPoster extends StatelessWidget {
  final Detail movie;

  const TitleAndPoster({Key key, @required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String nova;
    List<String> zanrovi = new List();

    movie.genres.forEach((zanr) => zanrovi.add(zanr.name.toString()));
    nova = zanrovi.join(', ');
    //print(nova);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    movie.title,
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            'Release date: ${movie.releaseDate}',
                            style: TextStyle(fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Text('Genres: $nova')
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: FadeInImage(
              // height: 200.0, // Change it to your need
              // width: 300.0, // Change it to your need
              fit: BoxFit.cover,
              placeholder: AssetImage("assets/placeholder.png"),
              image: NetworkImage(
                  'https://image.tmdb.org/t/p/w300/${movie.posterPath}'),
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendationsContainer extends StatelessWidget {
  final List<Movies> recommendations;
  const RecommendationsContainer({Key key, @required this.recommendations})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Recommend: $recommendations");
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Recommended Movies",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recommendations.length,
              itemBuilder: (context, int index) {
                return RecommendWidget(recommend: recommendations[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendWidget extends StatelessWidget {
  final Movies recommend;
  const RecommendWidget({Key key, @required this.recommend}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DetailBloc _detailBloc = DetailBloc();
    _detailBloc = BlocProvider.of<DetailBloc>(context);

    return BlocBuilder(
        bloc: _detailBloc,
        builder: (BuildContext context, DetailState state) {
          return Container(
            // child: Text("${recommend.title} "),
            child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text("${recommend.title}"),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: InkWell(
                      onTap: () {
                        _detailBloc.dispatch(FetchDetailEvent(9760));
                      },
                      child: FadeInImage(
                        // height: 200.0, // Change it to your need
                        width: 100.0, // Change it to your need
                        fit: BoxFit.cover,
                        placeholder: AssetImage("assets/placeholder.png"),
                        image: NetworkImage(
                            'https://image.tmdb.org/t/p/w1280/${recommend.backdropPath}'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}

class BottomLoader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Center(
        child: SizedBox(
          width: 33,
          height: 33,
          child: CircularProgressIndicator(
            strokeWidth: 1.5,
          ),
        ),
      ),
    );
  }
}
