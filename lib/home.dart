import 'package:flutter/material.dart';
import 'common/HttpHandler.dart';
import 'package:movie_app/media_list.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
 }
class _HomeState extends State<Home> {
  List<BottomNavigationBarItem> _getFooterItems(){
     return [
       BottomNavigationBarItem(
         icon: Icon(Icons.thumb_up),
         title: Text("Favoritas")
       ),
       BottomNavigationBarItem(
         icon: Icon(Icons.update),
         title: Text("Próximamente")
       ),
       BottomNavigationBarItem(
         icon: Icon(Icons.star),
         title: Text("Mejor valoradas")
       )
     ];
   }
  
  @override
  void initState(){
    super.initState();
  }
  // _loadJson() async{
  //   String data =await HttpHandler().fetchMovies();
  //   print(data);
  // }
  Widget build(BuildContext context) {
   return new Scaffold(
      appBar: AppBar(
        title: Text("Flutter movie"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            onPressed: (){},
          )
        ],
      ),
      drawer: Drawer(
        child:ListView(
          children: <Widget>[
            new DrawerHeader(
              child: Material(),
            ),
            new ListTile(
              title: Text("Películas"),
              trailing: Icon(Icons.local_movies),
            ),
            new Divider(
              height: 5.0,
            ),
            new ListTile(
              title: Text("Televisión"),
              trailing: Icon(Icons.live_tv),
            ),
            new Divider(
              height: 5.0,
            ),
            new ListTile(
              title: Text("Cerrar"),
              trailing: Icon(Icons.close),
              onTap: ()=>{
                Navigator.of(context).pop()
              },
            ),
            new Divider(
              height: 5.0,
            )
          ],
        )
        
      ),
      body: PageView(
        children: <Widget>[
          MediaList()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _getFooterItems(),
      ),
   );
   
  }
}