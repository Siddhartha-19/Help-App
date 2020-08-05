class Huser
{
  final String Police,Firestation,Medical,Govt_ambulance,Telemedicine,Disha,Agriculture,Anti_curroption,Navaratnalu;
  Huser({this.Police,this.Firestation,this.Medical,this.Govt_ambulance,this.Telemedicine,this.Disha,this.Agriculture,this.Anti_curroption,this.Navaratnalu}); 
 factory Huser.fromJson(Map<String, dynamic> json ){
   return Huser(
Police: json['Police'],
Firestation: json['Firestation'],
Medical: json['Medical'],
Govt_ambulance: json['Govt_ambulance'],
Telemedicine: json['Telemedicine'],
Disha: json['Disha'],
Agriculture: json['Agriculture'],
Anti_curroption: json['Anti_curroption'],
Navaratnalu: json['Navaratnalu'],    
   );
 }
}