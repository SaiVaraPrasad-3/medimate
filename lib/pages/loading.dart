import 'package:flutter/material.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {



  @override
  void initState() {
    super.initState();
    loadAll();

  }

  //TO DO actually make it load stuff. Right now it is just waiting 2 seconds
  void loadAll () async{
    await new Future.delayed(const Duration(seconds : 2));
    Navigator.pushReplacementNamed(context, '/home');
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loading"),
      ),
    );
  }
}
