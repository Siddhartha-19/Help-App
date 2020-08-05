import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/widgets.dart';
import 'User.dart';
import 'dart:convert';
import 'dart:async';
class Ap extends StatefulWidget {
 final String text;
  Ap({Key key, @required this.text}) : super(key: key);
  @override
  _ApState createState() => _ApState();
}

class _ApState extends State<Ap> {
 
  
  
String state;
  @override
  
  Widget build(BuildContext context) {
    return 
    Container(
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
                  child:/* FlatButton.icon(
                 
                   padding: EdgeInsets.all(20),
                   onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Personal()));
                   },
                    icon: Icon(Icons.person,size: 40,),
                     label:Text('For Your use',
                     style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                     ),)
                     ),*/
                     Center(
                     child:InkWell(
                       
                       child:Text("    call\nHelpline",
                       style: TextStyle(
                         fontSize: 28,

                       ),) ,
                       onTap: () {
                         print("${widget.text}");
                     String value=widget.text;
  var jsonData='{ "Andhrapradesh":"0866-2410978","Arunachalpradesh" :"9436055743","Assam":"6913347770","Bihar":"104","Chhattisgarh":"104","Goa":"104","Gujarat":"104","Haryana":"8558893911","Himachalpradesh":"104","Jharkhand":"104","Kerla":"0471-2552056","Madhyapradesh":"104","Maharashtra":"020-26127394","Manipur":"3852411668","Meghalaya":"108","Mizoram":"102","Nagaland":"7005539653","Odisha":"9439994859","Punjab":"104","Rajasthan":"0141-2225624","Sikkim":"104","Tripura":"0381-2315879","Uttarakhand":"104","Uttarpradesh":"18001805145","Westbengal":"3323412600", "Telangana"  :"104", "Tamilnadu"  :"044-29510500","Karnataka"  :"104","Puducherry" :"104"}';
                        var parsedJson=json.decode(jsonData);
                      var user=User.fromJson(parsedJson);
   if(value=='Andhra Pradesh')
    {
       setState(() {
       state=user.Andhrapradesh;
    }); 
    }
    if(value=='Arunachal Pradesh')
    {
       setState(() {
       state=user.Arunachalpradesh;
    }); 
    }
    if(value=='Assam')
    {
       setState(() {
       state=user.Assam;
    }); 
    }
    if(value=='Bihar')
    {
       setState(() {
       state=user.Bihar;
    }); 
    }
    if(value=='Chhattisgarh')
    {
       setState(() {
       state=user.Chhattisgarh;
    }); 
    }
    if(value=='Goa')
    {
       setState(() {
       state=user.Goa;
    }); 
    }
    if(value=='Gujarat')
    {
       setState(() {
       state=user.Gujarat;
    }); 
    }
    if(value=='Haryana')
    {
       setState(() {
       state=user.Haryana;
    }); 
    }
    if(value=='Himachal Pradesh')
    {
       setState(() {
       state=user.Himachalpradesh;
    }); 
    }
    if(value=='Jharkhand')
    {
       setState(() {
       state=user.Jharkhand;
    }); 
    }if(value=='Kerla')
    {
       setState(() {
       state=user.Kerla;
    }); 
    }
    if(value=='Madhya Pradesh')
    {
       setState(() {
       state=user.Madhyapradesh;
    }); 
    }
    if(value=='Maharashtra')
    {
       setState(() {
       state=user.Maharashtra;
    }); 
    }
    if(value=='Manipur')
    {
       setState(() {
       state=user.Manipur;
    }); 
    }
    if(value=='Meghalaya')
    {
       setState(() {
       state=user.Meghalaya;
    }); 
    }
    if(value=='Mizoram')
    {
       setState(() {
       state=user.Mizoram;
    }); 
    }
    if(value=='Nagaland')
    {
       setState(() {
       state=user.Nagaland;
    }); 
    }
    if(value=='Odisha')
    {
       setState(() {
       state=user.Odisha;
    }); 
    }
    if(value=='Punjab')
    {
       setState(() {
       state=user.Punjab;
    }); 
    }
    if(value=='Rajasthan')
    {
       setState(() {
       state=user.Rajasthan;
    }); 
    }
    if(value=='Tripura')
    {
       setState(() {
       state=user.Tripura;
    }); 
    }
    if(value=='Sikkim')
    {
       setState(() {
       state=user.Sikkim;
    }); 
    }
    if(value=='Uttarakhand')
    {
       setState(() {
       state=user.Uttarakhand;
    }); 
    }
    if(value=='Uttarpradesh')
    {
       setState(() {
       state=user.Uttarpradesh;
    }); 
    }
    if(value=='Telangana')
    {setState(() {
       state=user.Telangana;
    });
     
    }
    if(value=='Tamilnadu')
    {
      setState(() {
        state=user.Tamilnadu;
      });
      
    }
    if(value=='Karnataka')
    {
      setState(() {
        state=user.Karnataka;
      });
      
    }
    if(value=='puducherry')
    {
      setState(() {
        state=user.Puducherry;
      });
    }
     if(value=='Westbengal')
    {
      setState(() {
        state=user.Westbengal;
      });
    }
    
    launch("tel:"+state);

                       },
                     )
                     )
                ), 
            /*Container(
              child: Column(
                
                children: <Widget>[
                
                  Padding(
                    padding:EdgeInsets.all(8), 
                  child:FlatButton.icon(
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                   color: Colors.blueGrey,
                   padding: EdgeInsets.all(20),
                   onPressed:(){
                     print("${widget.text}");
                     String value=widget.text;
                     var jsonData='{ "andhrapradesh":"0866-2410978", "telangana"  :"104", "tamilnadu"  :"044-29510500","karnataka"  :"104","puducherry" :"104"}';
                        var parsedJson=json.decode(jsonData);
                      var user=User.fromJson(parsedJson);
   if(value=='andhrapradesh')
    {
       setState(() {
       state=user.andhrapradesh;
    }); 
    }
    if(value=='telangana')
    {setState(() {
       state=user.telangana;
    });
     
    }
    if(value=='tamilnadu')
    {
      setState(() {
        state=user.tamilnadu;
      });
      
    }
    if(value=='karnataka')
    {
      setState(() {
        state=user.tamilnadu;
      });
      
    }
    if(value=='puducherry')
    {
      setState(() {
        state=user.puducherry;
      });
    }
   
  
                     //state="0866-2410978";
                     launch("tel:"+state);
                   },
                   
                    icon: Icon(Icons.add_call,size: 40,),
                     label:Text('Call Helpline',
                     style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                     ),)
                     ),
                   ),
                  
                  
                ],
              ),


            )*/
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