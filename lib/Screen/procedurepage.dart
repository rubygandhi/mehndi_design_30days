import 'package:flutter/material.dart';
import 'package:mehndi_design/Model/DesignClass.dart';

class procedure extends StatefulWidget {
  final MehndiDesign obj;

  procedure(this.obj);
  @override
  _procedureState createState() => _procedureState();
}

class _procedureState extends State<procedure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Design"),
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            widget.obj.name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
SizedBox(height: 10,),
          Container(
            height: 200,
              width: 250,
              child: Image.network(widget.obj.image,
              fit: BoxFit.fill,)),
          SizedBox(height: 8,),
          Text("ingredient",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          Text(widget.obj.ingredients,
          style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
              ,)
        ],
      ),
    );
  }
}
