import 'package:flutter/material.dart';
import 'text_section.dart';
import 'image_banner.dart';
import 'style.dart';

void main() {
  runApp(MyApp());
}

const type = 'network';

const ErenUrl =
    'https://static.wikia.nocookie.net/shingekinokyojin/images/3/3c/Eren_Jaeger_%28Anime%29_character_image_%28850%29.png/revision/latest?cb=20201228000236';

const NarutoUrl =
    'https://variety.com/wp-content/uploads/2015/07/naruto_movie-lionsgate.jpg?w=681&h=383&crop=1';

const GiornoUrl =
    'https://giantbomb1.cbsistatic.com/uploads/scale_medium/46/462814/3181186-8832722279-af535.jpg';

const KiraUrl =
    'https://static.wikia.nocookie.net/villains/images/5/54/Light_YagamiHD.jpg/revision/latest?cb=20180414020152';

const TanjiroUrl =
    "https://i1.sndcdn.com/artworks-000589967966-61lhgg-t500x500.jpg";

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(headline6: AppBarTextStyle),
        ),
        textTheme: TextTheme(
          headline6: TitleTextStyle,
          bodyText1: Body1TextStyle,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
            title: Text('Top anime characters'),
            backgroundColor: Colors.lightBlue),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ImageBanner(ErenUrl, type, 382.0),
              TextSection('Eren Yager',
                  '15 years old scout, main character of Attack on titan anime series. He has the best character development.'),
              ImageBanner(NarutoUrl, type, 382.0),
              TextSection('Naruto Uzumaki',
                  'Main character of Naruto anime series. He loves his village and ramen. Also he is most emotional character.'),
              ImageBanner(GiornoUrl, type, 382.0),
              TextSection('Giorno Giovanna',
                  'Most powerfull character of JoJo anime series. He has a dream and epic fighting music!'),
              ImageBanner(KiraUrl, type, 382.0),
              TextSection('Yagami Light',
                  'Main character killer of anime series Death Note. He owns one of the death notes and becomes evil.'),
              ImageBanner(TanjiroUrl, type, 382.0),
              TextSection('Tanjiro Kamado',
                  '15 years old demon slayer. He will protect his sister at all costs.'),
            ],
          ),
        ),
      ),
    );
  }
}
