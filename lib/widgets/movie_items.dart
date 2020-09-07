import 'package:flutter/material.dart';
import 'package:movie_stream_app/models/movie_model.dart';

class MovieItem extends StatefulWidget {
  final Movie movie;
  const MovieItem({Key key, this.movie}) : super(key: key);

  @override
  _MovieItemState createState() => _MovieItemState();
}

class _MovieItemState extends State<MovieItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.red[100],
        margin: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Image.asset(
              widget.movie.image,
              width: double.maxFinite,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.calendar_today,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('${widget.movie.releaseYear}'),
                    ],
                  ),
                  
                  Row(
                    children: [
                      Icon(Icons.category, color: Colors.purple,),
                      SizedBox(
                        width: 5,
                      ),
                      Text(widget.movie.category),
                    ],
                  ),

                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.red,),
                      SizedBox(
                        width: 5,
                      ),
                      Text('${widget.movie.rating}'),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ));
  }
}
