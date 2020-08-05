import 'package:flutter/material.dart';
import 'package:covid/Ap.dart';
/*import 'dart:convert';
import 'package:covid/User.dart';*/
class Personal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hpersonal()
    ;
  }
}
class Hpersonal extends StatefulWidget {
  @override
  _HpersonalState createState() => _HpersonalState();
}

class _HpersonalState extends State<Hpersonal> {
  List<String> statename = [
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jharkhand',
    'Karnataka',
    'Kerla',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamilnadu',
    'Telangana',
    'Tripura',
    'Uttarakhand',
    'Uttarpradesh',
    'Westbengal',
    'puducherry'
  ];
   List<String> statepic = [
    'assets/images/ap.png',
    'assets/images/ts.png',
    'assets/images/tn.png',
    'assets/images/kn.png',
    'assets/images/pd.png',
    
  ];
  
String text,value;

 Widget customcard(String statesname,String statepic) {
    return Padding(
        padding: EdgeInsets.all(20),
        child:Container(
          width: 400,
          height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(colors: [Colors.yellow,Colors.red[300]]),
        ),
        child:Center(
        child: InkWell(
            onTap: () {
               setState(() {
                 value=statesname;
              });
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Ap(text: value,)));
            
              
            },
            child: Text(statesname,
            style: TextStyle(
              //color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.w600
            ),),
    ))));
  }

  @override
  Widget build(BuildContext context) {
    return 
    Container(
       decoration: BoxDecoration(
         gradient: LinearGradient(colors: [
                  Colors.blue,
                  Colors.red,
                ],
         begin: Alignment.bottomLeft,
         end:Alignment.topRight)
       ),
       child:Scaffold(
     //backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading:IconButton(icon:Icon(Icons.arrow_back),
           onPressed:(){
             Navigator.pop(context);
           }
        
           ),
          centerTitle: true,
          title: Text(
            'COVID-19 Helpline',
            
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          
        ),
        body: ListView(
          children: <Widget>[
             
              customcard(statename[0],statepic[0]),
              customcard(statename[1],statepic[1]),
              customcard(statename[2],statepic[2]),
              customcard(statename[3],statepic[3]),
              customcard(statename[4],statepic[4]),
              customcard(statename[5],statepic[4]),
              customcard(statename[6],statepic[4]),
              customcard(statename[7],statepic[4]),
              customcard(statename[8],statepic[4]),
              customcard(statename[9],statepic[4]),
               customcard(statename[10],statepic[4]),
               customcard(statename[11],statepic[4]),
               customcard(statename[12],statepic[4]),
               customcard(statename[13],statepic[4]),
               customcard(statename[14],statepic[4]),
                customcard(statename[15],statepic[4]),
                customcard(statename[16],statepic[4]),
                customcard(statename[17],statepic[4]),
                customcard(statename[18],statepic[4]),
                customcard(statename[19],statepic[4]),
                customcard(statename[20],statepic[4]),
                customcard(statename[21],statepic[4]),
                customcard(statename[22],statepic[4]),
                customcard(statename[23],statepic[4]),
                customcard(statename[24],statepic[4]),
                 customcard(statename[25],statepic[4]),
                customcard(statename[26],statepic[4]),
                customcard(statename[27],statepic[4]),
                customcard(statename[28],statepic[4]),
          
          
          ],
        )
       )
    );
  }
}
