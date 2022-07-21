import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String _message = 'تطبيق مسبحة اذكار ';

    ModalRoute? modalRoute = ModalRoute.of(context);
    if(modalRoute != null){
      Map<String, dynamic> arguments =modalRoute.settings.arguments as Map<String, dynamic>;
      if(arguments.containsKey('message')){
        _message = arguments['message'];
      }
    }

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
          _message,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
