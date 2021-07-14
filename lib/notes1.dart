import 'package:flutter/material.dart';

class Notes1 extends StatefulWidget {
  Notes1();

  @override
  _Notes1State createState() => _Notes1State();
}

class _Notes1State extends  State<Notes1> {
  final xyz=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
      
    ),
    backgroundColor: Colors.black12,
    ),
    body:Column(
      children: [
        SizedBox(height:200,child: TextField(
          controller: xyz,

        )),
        Padding(padding: EdgeInsets.only(top:30),
        child:TextButton(child:Text("save"),onPressed: (){
          var n1;
                    n1.str=xyz;
        },))
      ],
    ));
  }
}
class notes
{
   String str="";
   notes n1=notes();
   notes n2=notes();
}