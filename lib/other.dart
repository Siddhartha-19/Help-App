import 'package:flutter/material.dart';
import 'package:covid/Hap.dart';
class Other extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hother();
  }
}
class Hother extends StatefulWidget {
  @override
  _HotherState createState() => _HotherState();
}

class _HotherState extends State<Hother> {
  @override
  String htext,hvalue;
  List<String> hname=
  [
    'Police',
    'Fire station',
    'Medical Emergency',
    'Govt Ambulance',
    'Telemedicine',
     'Disha',
     'Agriculture',
     'Anti Curroption',
     'Navaratnalu'
  ];
 Widget hcustomcard(String hname) {
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
                 hvalue=hname;
              });
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Hap(htext: hvalue,)));
            
              
            },
            child: Text(hname,
            style: TextStyle(
              //color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.w600
            ),),
    ))));
  }
  Widget build(BuildContext context) {
    return  Container(
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
            'Andhra Pradesh \n     Helpline',
            
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          
        ),
        body: ListView(
          children: <Widget>[
             
              hcustomcard(hname[0]),
              hcustomcard(hname[1]),
              hcustomcard(hname[2]),
              hcustomcard(hname[3]),
              hcustomcard(hname[4]),
              hcustomcard(hname[5]),
              hcustomcard(hname[6]),
              hcustomcard(hname[7]),
              hcustomcard(hname[8]),
              
          
          ],
        )
       )
    );
  }
}

  
