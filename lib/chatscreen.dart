import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget{
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState()=>_ChatScreenState();



}

class _ChatScreenState extends State<ChatScreen>{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(

          children: [
            Divider(
              height:10,
            ),

            ListTile(
leading: CircleAvatar(
  backgroundImage:NetworkImage(items[index].avatar),

),
              title:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text (items[index].name),
                  Text (items[index].time),



                ],

              ),

              subtitle:Container(
               child: Text(items[index].message)

              ),

            ),


          ],

        );
      },

    );
  }



}

class Model{
  String name;
  String message;
  String time;
  String avatar;
  Model({required this.name,required this.message,required this.time,required this.avatar});

}

List<Model> items=[

  Model(
    name:"Priyanka",
    time:"10:00",
    message:"Hello",
    avatar:"https://i.insider.com/6026f0e72edd0f001a8d5a78?width=1300&format=jpeg&auto=webp",

  ),
  Model(
    name:"Priyanka",
    time:"10:00",
    message:"Hello",
    avatar:"https://i.insider.com/6026f0e72edd0f001a8d5a78?width=1300&format=jpeg&auto=webp",
  ),
  Model(
    name:"Priyanka",
    time:"10:00",
    message:"Hello",
    avatar:"https://i.insider.com/6026f0e72edd0f001a8d5a78?width=1300&format=jpeg&auto=webp",
  ),


];





