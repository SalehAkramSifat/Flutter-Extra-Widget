import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: HomeActivity(),);
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Extra Widget",
        style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,),

      //Hero Widget
      body: ListView(padding: EdgeInsets.all(10),
        children: [
          Card(child: ListTile(title: Text("Hero Animation"),
            leading: Hero(tag: "hero-demo",child: Icon(CupertinoIcons.star, color: Colors.blue,),),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context) => HeroDetailPage ()));},

          ),)

      ],),





    );
  }
}

class HeroDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Detail Page")),
      body: Center(
        child: Hero(
          tag: "hero-demo",
          child: Icon(
            CupertinoIcons.star,
            color: Colors.blue,
            size: 100,
          ),
        ),
      ),
    );
  }
}
