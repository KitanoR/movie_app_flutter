final String _basePath = "https://image.tmdb.org/t/p/w300/";
final String _imageUrlLarge = "https://image.tmdb.org/t/p/w500/";

String getMediumPictureUrl(String path) => _basePath + path;
String getLargePictureUrl(String path) => _imageUrlLarge + path;

Map<int, String> _genreMap = {
  28: "Acción",
  12: "Aventura",
  16: "Animación",
  35: "Comedia"
};


List<String> generesToList(List<dynamic> genreIds) => 
genreIds.map((id) => _genreMap[id]).toList();


String getGenreValue(List<dynamic> genreIds){
  StringBuffer buffer = new StringBuffer();
  buffer.writeAll(generesToList(genreIds), " ,");
  return buffer.toString();

}