import 'package:movie_app/common/Util.dart';

class Media{
  int id;
  double voteAverage;
  String title;
  String posterPath;
  String backdropPath;
  String overview;
  String releaseDate;
  List<dynamic> genreIds;

  String getPosterUrl() => getMediumPictureUrl(posterPath);

  factory Media(Map jsonMap){
    try {
      return new Media.deserialize(jsonMap);  
    } catch (e) {
      throw e;
    }
    
  }
  Media.deserialize(Map json) :
      id =json["id"].toInt(),
      voteAverage = json["vote_average"].toDouble(),
      title = json["title"].toString(),
      posterPath = json["poster_path"].toString(),
      backdropPath = json["backdrop_path"].toString(),
      overview = json["overview"].toString(),
      releaseDate = json["release_date"].toString();
}