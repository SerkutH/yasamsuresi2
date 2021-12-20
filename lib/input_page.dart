import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yasamsuresi2/result_page.dart';
import 'package:yasamsuresi2/user_data.dart';
import './icon_cinsiyet2.dart';
import './my_container.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String seciliCinsiyet;
  double icilenSigara = 0.0;
  double sporgunu = 0.0;
  int boy = 170;
  int kilo = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    child: Row(
                      children: [
                        RotatedBox(
                          child: Text(
                            'Boy',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                          quarterTurns: -1,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            '$boy',
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                                child: Icon(FontAwesomeIcons.plus),
                                onPressed: () {
                                  setState(() {
                                    boy++;
                                  });
                                }),
                            OutlinedButton(
                                child: Icon(FontAwesomeIcons.minus),
                                onPressed: () {
                                  setState(() {
                                    boy = boy - 1;
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: Row(
                      children: [
                        RotatedBox(
                          child: Text(
                            'Kilo',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                          quarterTurns: -1,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            '$kilo',
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                                child: Icon(FontAwesomeIcons.plus),
                                onPressed: () {
                                  setState(() {
                                    kilo++;
                                  });
                                }),
                            OutlinedButton(
                                child: Icon(FontAwesomeIcons.minus),
                                onPressed: () {
                                  setState(() {
                                    kilo = kilo - 1;
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Haftada kaç defa spora gidiyosun",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${sporgunu.round()}',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  Slider(
                    value: sporgunu,
                    min: 0,
                    max: 14,
                    divisions: 14,
                    onChanged: (double newValue) {
                      setState(() {
                        sporgunu = newValue;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Günde kaç sigara içiyosun",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${icilenSigara.round()}',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  Slider(
                    value: icilenSigara,
                    min: 0,
                    max: 40,
                    onChanged: (double newValue) {
                      setState(() {
                        icilenSigara = newValue;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                      onPress: () {
                        setState(() {
                          seciliCinsiyet = 'Bayan';
                        });
                      },
                      renk: seciliCinsiyet == 'Bayan'
                          ? Colors.lightBlue[100]
                          : Colors.white,
                      child: Cinsiyet(
                        icon: FontAwesomeIcons.venus,
                        cinsiyeti: "Bayan",
                      )),
                ),
                Expanded(
                  child: MyContainer(
                      onPress: () {
                        setState(() {
                          seciliCinsiyet = 'Erkek';
                        });
                      },
                      renk: seciliCinsiyet == 'Erkek'
                          ? Colors.lightBlue[100]
                          : Colors.white,
                      child: Cinsiyet(
                        icon: FontAwesomeIcons.venus,
                        cinsiyeti: "Erkek",
                      )),
                ),
              ],
            ),
          ),
          ButtonTheme(height: 300,
            child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(
                    UserData(seciliCinsiyet: seciliCinsiyet,icilenSigara: icilenSigara, sporgunu: sporgunu,boy: boy,kilo: kilo),
                  ),),);
                },
                child: Text(
                  'Hesapla',
                  style: TextStyle(color: Colors.black54, fontSize: 30),
                )),
          )
        ],
      ),
    );
  }
}
