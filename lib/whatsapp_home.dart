import 'package:flutter/material.dart';
import 'package:whatsapp/callscreen.dart';
import 'package:whatsapp/chatscreen.dart';
import 'package:whatsapp/statuscreen.dart';
import 'package:whatsapp/camerascreen.dart';
class WhatsApp extends StatefulWidget{
  @override

  _WhatsAppState createState()=>_WhatsAppState();


}

class _WhatsAppState extends State<WhatsApp> with SingleTickerProviderStateMixin{

  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=TabController(vsync: this,initialIndex: 1,length:4);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar:AppBar(
        title:Text("WhatsApp"),
        elevation: 0.7,
        bottom:TabBar(

          controller:controller,
          tabs: [
            Tab(
              icon:Icon(Icons.camera_alt)
            ),
            Tab(
              text:"Chats"
            ),
            Tab(
              text:"Status",
            ),
            Tab(
              text:"Calls"
            ),

          ],
        ),
actions: <Widget>[

  Icon(Icons.search),
  SizedBox(width:5),
  Icon(Icons.more_vert),
],
      ),

body:TabBarView(
  controller:controller,
  children: [
    CameraScreen(),
    ChatScreen(),
    StatusScreen(),
    CallScreen(),

],


    ),

      floatingActionButton:FloatingActionButton(onPressed: () =>print("hello"),
        child:Icon(Icons.message),



      ),

    );
  }





}