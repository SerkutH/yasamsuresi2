import 'package:yasamsuresi2/user_data.dart';

class Hesap {
  UserData userData;
  Hesap(this.userData);

  double hesaplama () {
    double sonuc;
    sonuc = 70 + userData.sporgunu - userData.icilenSigara;
    sonuc = sonuc + (userData.boy/userData.kilo);

    if(userData.seciliCinsiyet == 'Bayan') {
      return sonuc +5;
    } else {
      return sonuc;
    }


  }


}