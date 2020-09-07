import 'package:flutter/material.dart';
import 'package:movie_stream_app/db/temp_db.dart';
import 'package:movie_stream_app/widgets/movie_items.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie App',
        style: TextStyle(fontFamily: 'Kufam',
        ),
       ),
      ),
      body: ListView.builder(
       itemBuilder: (context, index) => MovieItem(movie: movies[index]),
       itemCount: movies.length,
      ),
    );
  }
}