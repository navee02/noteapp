import 'package:flutter/material.dart';
import './notes1.dart';

class newpage extends StatefulWidget {
  newpage();

  @override
  _newpageState createState() => _newpageState();
}

class _newpageState extends State<newpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Colors.black12,
      ),
      body: Column(
        children: [
          SizedBox(                        //for the entire screen
            height: 654,
            child: ListView(children: [
              Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: SizedBox(             //for each tile widget
                      height: 120,
                      child: ListTile(
                        title: Text("Note 1",style:TextStyle(fontSize:25)),
                        leading: Icon(Icons.note),
                        onTap:(){
                          Navigator.push(context,MaterialPageRoute(builder:(context)=>Notes1()));
                        },
                        hoverColor:Colors.blue,
                        selectedTileColor: Colors.black12,
                        tileColor:Colors.black12,
                      ))),
                      Padding(
                        padding:const EdgeInsets.only(top:20,bottom:20),
                        child:SizedBox(
                          height:120,
                          child:ListTile(leading:Icon(Icons.note),title:Text("Note 2",style:TextStyle(fontSize:25)),
                          tileColor:Colors.black12,
                          onTap:(){
                            Navigator.push(context,MaterialPageRoute(builder:(context)=>Notes1()));
                          }
                        )
                      ))
                      
            ]),
          )
        ],
      ),
    );
  }
}
