import 'package:flutter/material.dart';

class AboutAppScreen extends StatefulWidget {

  final String message;

  AboutAppScreen({required this.message});


  @override
  _AboutAppScreenState createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutAppScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        title: const  Text (
          'عن التطبيق ', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        leading: IconButton(onPressed: ()=> Navigator.pop(context), icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body:  Center(
        child: Text(
          widget.message,
          style:  TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
