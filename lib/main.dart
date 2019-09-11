import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_infinite_list/detail.dart';
import 'package:flutter_infinite_list/bloc/bloc.dart';
import 'package:flutter_infinite_list/models/models.dart';

void main() {
  BlocSupervisor().delegate = SimpleBlocDelegate();
  runApp(App());
}

class App extends StatelessWidget {
  final primaryColor = const Color(0xFFEEEEEE);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Popular Movies',
      theme: ThemeData(primaryColor: primaryColor),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Movies'),
          ),
          body: HomeScreen()),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final MostPopBloc _mostPopBloc = MostPopBloc();
  final PostBloc _topRatedBloc = PostBloc();

  @override
  void initState() {
    super.initState();
    _mostPopBloc.dispatch(FetchMostPopEvent());
    _topRatedBloc.dispatch(FetchTopRatedEvent());
  }

  @override
  void dispose() {
    _mostPopBloc.dispose();
    _topRatedBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProviderTree(
      blocProviders: [
        BlocProvider<MostPopBloc>(bloc: _mostPopBloc),
        BlocProvider<PostBloc>(bloc: _topRatedBloc),
      ],
      child: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Column(children: [
              Expanded(child: TopRated()),
              Expanded(child: MostPopular())
            ]);
          } else {
            return Row(
              children: [
                Expanded(child: TopRated()),
                Expanded(child: MostPopular())
              ],
            );
          }
        },
      ),
    );
  }
}

class MostPopular extends StatefulWidget {
  @override
  _MostPopularState createState() => _MostPopularState();
}

class _MostPopularState extends State<MostPopular> {
  final _scrollController = ScrollController();
  final _scrollThreshold = 200.0;
  MostPopBloc _postBloc;

  _MostPopularState() {
    _scrollController.addListener(_onScroll);
  }

  @override
  void initState() {
    super.initState();
    _postBloc = BlocProvider.of<MostPopBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _postBloc,
      builder: (BuildContext context, MostPopState state) {
        if (state is MostPopUninitialized) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is MostPopError) {
          return Center(
            child: Text('failed to fetch posts'),
          );
        }
        if (state is MostPopLoaded) {
          if (state.posts.isEmpty) {
            return Center(
              child: Text('no posts'),
            );
          }
          return Container(
            color: Colors.grey[300],
            child: Column(
              children: <Widget>[
                Text(
                  "MOST POPULAR",
                  style: TextStyle(fontSize: 15),
                ),
                Expanded(
                  child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return index >= state.posts.length
                            ? BottomLoader()
                            : PostWidget(post: state.posts[index]);
                      },
                      itemCount: state.hasReachedMax
                          ? state.posts.length
                          : state.posts.length + 1,
                      controller: _scrollController),
                ),
              ],
            ),
          );
        }
        return Container();
      },
    );
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (maxScroll - currentScroll <= _scrollThreshold) {
      _postBloc.dispatch(FetchMostPopEvent());
    }
  }
}

class TopRated extends StatefulWidget {
  //final PostBloc postBloc;
  //TopRated({this.postBloc});
  @override
  _TopRatedState createState() => _TopRatedState();
}

class _TopRatedState extends State<TopRated> {
  final _scrollController = ScrollController();
  final _scrollThreshold = 200.0;
  PostBloc _postBloc;

  _TopRatedState() {
    _scrollController.addListener(_onScroll);
  }

  @override
  void initState() {
    super.initState();
    _postBloc = BlocProvider.of<PostBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _postBloc,
      builder: (BuildContext context, PostState state) {
        if (state is PostUninitialized) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is PostError) {
          return Center(
            child: Text('failed to fetch posts'),
          );
        }
        if (state is PostLoaded) {
          if (state.posts.isEmpty) {
            return Center(
              child: Text('no posts'),
            );
          }
          return Container(
            color: Colors.teal[100],
            child: Column(
              children: <Widget>[
                Text(
                  "TOP RATED",
                  style: TextStyle(fontSize: 15),
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return index >= state.posts.length
                          ? BottomLoader()
                          : PostWidget(post: state.posts[index]);
                    },
                    itemCount: state.hasReachedMax
                        ? state.posts.length
                        : state.posts.length + 1,
                  ),
                ),
              ],
            ),
          );
        }
        return Container();
      },
    );
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (maxScroll - currentScroll <= _scrollThreshold) {
      _postBloc.dispatch(FetchTopRatedEvent());
    }
  }
}

class PostWidget extends StatelessWidget {
  final Movies post;

  const PostWidget({Key key, @required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                print("onTap");
                print("POST_ID MAIN: ${post.id}");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailScreen(movieid: post.id)),
                );
              },
              child: ListTile(
                leading: Image.network(
                  'https://image.tmdb.org/t/p/w400/${post.posterPath}',
                  height: 80,
                  width: 80,
                ),
                title: Text(post.title),
                isThreeLine: false,
                subtitle: Text(""),
                dense: true,
                trailing: Text(
                  '${post.voteAverage}',
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
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
