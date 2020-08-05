import 'package:flutter/material.dart';
import 'dart:convert';
import 'Huser.dart';
import 'package:url_launcher/url_launcher.dart';
class Hap extends StatefulWidget {
   final String htext;
   Hap({Key key, @required this.htext}) : super(key: key);
  @override
  _HapState createState() => _HapState();
}

class _HapState extends State<Hap> {
  String hstate;
  @override
  Widget build(BuildContext context) {
    return  Container(
       decoration: BoxDecoration(
         gradient: LinearGradient(colors: [
                  Colors.amber[200],
                  Colors.pink[200],
                ],
         begin: Alignment.bottomLeft,
         end:Alignment.topRight)
       ),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
         leading:IconButton(icon:Icon(Icons.arrow_back),
           onPressed:(){
             Navigator.pop(context);
           }
        
           ),
      ),
      body:Center(
      child:Padding(
        padding: EdgeInsets.all(10), 
      child:Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8),
            child: 
                Container(
                  width:180,
                  height:180,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red
                    //gradient: LinearGradient(colors: [Colors.orange,Colors.green])
                  ),
                  child:
                     Center(
                     child:InkWell(
                       
                       child:Text("    call\nHelpline",
                       style: TextStyle(
                         fontSize: 28,

                       ),) ,
                       onTap: () {
                         print("${widget.htext}");
                     String hvalue=widget.htext;
  var hjsonData='{"Police":"100","Firestation":"101","Medical":"104","Govt_ambulance":"108","Telemedicine":"14410","Disha":"181","Agriculture":"1907","Anti_curroption":"14400","Navaratnalu":"1902"}';
                        var hparsedJson=json.decode(hjsonData);
                      var huser=Huser.fromJson(hparsedJson);
   if(hvalue=='Police')
   {
     setState(() {
       hstate=huser.Police;
     });
   }
    if(hvalue=='Fire station')
   {
     setState(() {
       hstate=huser.Firestation;
     });
   }
    if(hvalue=='Medical Emergency')
   {
     setState(() {
       hstate=huser.Medical;
     });
   }
    if(hvalue=='Govt Ambulance')
   {
     setState(() {
       hstate=huser.Govt_ambulance;
     });
   }
   if(hvalue=='Telemedicine')
   {
     setState(() {
       hstate=huser.Telemedicine;
     });
   }
    if(hvalue=='Disha')
   {
     setState(() {
       hstate=huser.Disha;
     });
   }
    if(hvalue=='Agriculture')
   {
     setState(() {
       hstate=huser.Agriculture;
     });
   }
     if(hvalue=='Anti Curroption')
   {
     setState(() {
       hstate=huser.Anti_curroption;
     });
   }
    if(hvalue=='Navaratnalu')
   {
     setState(() {
       hstate=huser.Navaratnalu;
     });
   }
    launch("tel:"+hstate);

                       },
                     )
                     )
                ), 
            
        ),
          ],
        ) ,
      ),
      ),
      ),
    )
    );
  }
}
 