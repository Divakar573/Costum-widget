import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Flutter App',
      home: SimpleScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SimpleScreen extends StatefulWidget {
  @override
  _SimpleScreenState createState() => _SimpleScreenState();
}

class _SimpleScreenState extends State<SimpleScreen> {
  String message = "Hello, Flutter!";

  void updateMessage() {
    setState(() {
      message = "You clicked the button!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("costum widget"),
      ),
      body:Container(
      child:Column(
        children: [
          catlog(),
          subcataglog(),
         
          
          Row(
            children: [
              

            

            
          
          Container(
            height: 100,
            color:Colors.blueAccent,

          ),
          Container(
            height: 100,
            color:Colors.green,
            
          

          )
            ],
          )
        
        ],
      )
      ),
        

    
    );
  }}
  class catlog extends StatelessWidget{
    @override
    Widget build(BuildContext context){
      return  Expanded(
           
          child:Container(
           
            color:Colors.red,
            


            child:ListView.builder(itemBuilder:(context,index)=>Padding(
            padding:EdgeInsets.all(8.0),
            child:SizedBox(
              width:80,
            //  height:200,
              
              child:CircleAvatar(
                
                backgroundColor:Colors.blue,
              )
              
                
              
            ),
            
           
            
           
          ),
          itemCount: 10,scrollDirection:Axis.horizontal,
           ),
              
  
            ),
          );

    }
    

  }
  class subcataglog extends StatelessWidget{
    @override
    Widget build(BuildContext context){
      return Expanded(
            flex: 4,
          
          child:Container(
            height:200 ,
            color:Colors.amber,
            child:ListView.builder(itemBuilder:(context,index)=>Padding(
              padding:EdgeInsets.all(8.0),
           
              
              child:SizedBox(
                
                child:ListTile(
                  leading:CircleAvatar(
                    backgroundColor:Colors.green,
                  ),
                  title:Text('Mobile No'),
                  subtitle:Text('Name'),
                  trailing:Icon(Icons.delete),
                 
                )

              )
            ),
            
          ),
            
          ),
          );

    }

  }