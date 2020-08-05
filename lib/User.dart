class User
{
  final String Andhrapradesh,Arunachalpradesh,Assam,Bihar,Kerla;
  final String Telangana,Goa,Gujarat,Haryana,Himachalpradesh,Maharashtra;
  final String Tamilnadu,Chhattisgarh,Jharkhand,Madhyapradesh,Manipur;
  final String Karnataka,Meghalaya,Mizoram,Nagaland,Odisha,Uttarakhand;
  final String Puducherry,Punjab,Rajasthan,Sikkim,Tripura,Uttarpradesh,Westbengal;
 User({this.Andhrapradesh,this.Telangana,this.Tamilnadu,this.Karnataka,this.Puducherry,this.Arunachalpradesh,this.Assam,this.Bihar,this.Chhattisgarh,this.Goa,this.Gujarat,this.Haryana,this.Himachalpradesh,this.Jharkhand,this.Kerla,this.Madhyapradesh,this.Maharashtra,this.Manipur,this.Meghalaya,this.Mizoram,this.Nagaland,this.Odisha,this.Punjab,this.Rajasthan,this.Sikkim,this.Tripura,this.Uttarakhand,this.Uttarpradesh,this.Westbengal}); 
 factory User.fromJson(Map<String, dynamic> json ){
   return User(
     Andhrapradesh: json['Andhrapradesh'],
     Telangana: json['Telangana'],
     Tamilnadu: json['Tamilnadu'],
     Karnataka: json['Karnataka'],
     Puducherry: json['Puducherry'],
     Arunachalpradesh: json['Arunachalpradesh'],
     Assam: json['Assam'],
     Bihar: json['Bihar'],
    Chhattisgarh: json['Chhattisgarh'],
    Goa: json['Goa'],
    Gujarat: json['Gujarat'],
    Haryana: json['Haryana'],
    Himachalpradesh: json['Himachalpradesh'],
    Jharkhand: json['Jharkhand'],
     Kerla: json['Kerla'],
     Madhyapradesh: json['Madhyapradesh'],
     Maharashtra: json['Maharashtra'],
     Manipur:json['Manipur'],
     Meghalaya: json['Meghalaya'],
   Mizoram: json['Mizoram'],
   Nagaland: json['Nagaland'],
   Odisha:json['Odisha'],
   Punjab:json['Punjab'],
Rajasthan: json['Rajasthan'],
Sikkim:json['Sikkim'],
Tripura:json['Tripura'],
Uttarakhand:json['Uttarakhand'],
Uttarpradesh:json['Uttarpradesh'],
Westbengal:json['Westbengal']
















     
   );
 }
}