import 'package:flutter/material.dart';
import 'package:movie_app/common/HttpHandler.dart';
import 'package:movie_app/model/Media.dart';
import 'package:movie_app/media_list_item.dart';

class MediaList extends StatefulWidget {
  @override
  _MediaListState createState() => new _MediaListState();
 }
class _MediaListState extends State<MediaList> {
  List<Media> _media = new List();
  @override
  void initState(){
    super.initState();
    loadMovies();
  }
  void loadMovies() async{
    var movies =await HttpHandler().fetchMovies();
    print("deberpia cargar la data");
    print(movies);
    setState(() {
    _media.addAll(movies);
    });
  }
  Widget build(BuildContext context) {
   return new Container(
     child: ListView.builder(
       itemCount: _media.length,
       itemBuilder: (BuildContext context, int index){
         return new MediaListItem(_media[index]);
       },
     ),
   );
  }
}
