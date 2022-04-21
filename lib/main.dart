
import 'package:flutter/material.dart';
import 'package:whatsapp/whatsapp_home.dart';

void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return  MaterialApp(

    title: 'WhatsApp',
    debugShowCheckedModeBanner: false,
    theme:  ThemeData(
      primaryColor: Color(0xff075E54),
      backgroundColor: Color(0xff25D365),
      primarySwatch:  Colors.green,
    ),
 home:WhatsApp(),

  );
  }


}

