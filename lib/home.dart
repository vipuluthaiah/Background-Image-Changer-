import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audio_cache.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

AudioCache audioPlayer =AudioCache();



NetworkImage one =        NetworkImage("https://images.unsplash.com/photo-1558981396-5fcf84bdf14d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60");
NetworkImage two =   NetworkImage("https://images.unsplash.com/photo-1585135994149-7a4ce2cadd26?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60");
NetworkImage three =  NetworkImage("https://images.unsplash.com/photo-1585134425874-a858f1de7c9f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60");
NetworkImage four =   NetworkImage("https://images.unsplash.com/photo-1585142741576-93ee8aaa8636?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60");
NetworkImage five=   NetworkImage("https://images.unsplash.com/photo-1585137623746-dbad3bed4580?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60");
NetworkImage six =   NetworkImage("https://images.unsplash.com/photo-1585147867026-75a5d9825563?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60");
NetworkImage seven =  NetworkImage("https://images.unsplash.com/photo-1585114311384-0f89d8daf3d6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60");
NetworkImage eight =   NetworkImage("https://images.unsplash.com/photo-1585114311384-0f89d8daf3d6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60");



var defaultimage;

void initState(){
  super.initState();
setState(() {
  defaultimage =one;
  
});}


 changeImg(){
  int random = (1 + Random().nextInt(7));
  


  NetworkImage currentImage;

  switch (random) {
    case 1:
      currentImage=one; 
      break;
          case 2:
      currentImage=two; 
      break;
          case 3:
      currentImage=three; 
      break;
          case 4:
      currentImage=four; 
      break;
          case 5:
      currentImage=five; 
      break;
          case 6:
      currentImage=six; 
      break;
                case 7:
      currentImage=seven; 
      break;
                case 8:
      currentImage=eight; 
      break;
    default:
  }
  setState(() {
    defaultimage =currentImage;
  });

}








  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
// floatingActionButton: FloatingActionButton(onPressed: changeImg()),
appBar: AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0,
  title: Center(
    child: Text('Image Changer App',
    style: TextStyle(
      fontSize: 30,
      color: Colors.redAccent
    ),),
    
    
    ),
  
),

body:Container(
 
    child: Center(
child: Column(
  children: <Widget>[
    Image(
      image: defaultimage,
      width: 500.0,
      height:500.0,
    )

  ],
),
    ),
    

),
floatingActionButton: FloatingActionButton(
  onPressed: (){
    changeImg();
  },
child: Icon(Icons.card_giftcard),
backgroundColor: Colors.pink,
foregroundColor: Colors.black,
),
floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}