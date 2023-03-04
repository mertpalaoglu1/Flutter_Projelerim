import 'package:ortalama_yasam_suresi/user_data.dart';

class Calculations {
  final UserData _userData;
  Calculations(this._userData);

  double? calculation() {
    double result;
    result = 70 + _userData.yapilanSpor - _userData.icilenSigara;
    result+= (_userData.boy/_userData.kilo);
    
   /* if(_userData.seciliCinsiyet=='KADIN'){
      return result+3;
    }
    else{
      return result;
    }
    
  }*/

  return _userData.seciliCinsiyet=='KADIN'?result+3:result; //eğer kadınsa result+3 değilse result döndür.
}
}