import 'package:covid/Personal.dart';
import 'package:covid/other.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
 
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
         gradient: LinearGradient(colors: [
                Colors.amber[200],
                  Colors.pink[200],
                ],
         begin: Alignment.bottomLeft,
         end:Alignment.topRight)
       ),
    child:Scaffold(
       backgroundColor: Colors.transparent,
        appBar: AppBar(
          
          
          title: Text('Covid-Help',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),),
          centerTitle: true,
          flexibleSpace: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  const Color(0xFF3366FF),
                  const Color(0xFF00CCFF),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
        ),
        ),
        body: Stack(
          children: <Widget>[
            Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding:EdgeInsets.all(10), 
                child:
                Container(
                  width: 300,
                  height: 120,
               
                  decoration: BoxDecoration(
              color: Colors.red,
                   borderRadius: BorderRadius.circular(60),
                  ),
                  child:Center(
                  child: FlatButton.icon(
                 color: Colors.red,
                   padding: EdgeInsets.all(20),
                   onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Personal()));
                   },
                    icon: Icon(Icons.person,size: 40,),
                     label:Text('Covid-19 \n Helpline',
                     style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                     ),)
                     ),
                )
                ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                     child:
                      Container(
                  width: 300,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    //gradient: LinearGradient(colors: [Colors.orange,Colors.green]),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child:Center(
                  child: FlatButton.icon(
                 color: Colors.red,
                   padding: EdgeInsets.all(20),
                   onPressed:(){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Other()));
                   },
                    icon: Icon(Icons.person_add,size: 40,),
                     label:Text('   Other \n Helpline',
                     style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                     ),)
                     ),
                )
                ),
                    
                ),
              ],
            )
            )
          ],

        ),
    )
      );
  }
}