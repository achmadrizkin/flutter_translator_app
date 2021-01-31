import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GoogleTranslator translator = GoogleTranslator();

  String _transalateLanguage;
  String selectedLanguage = 'English';

  // list all language
  List listLanguage = [
    "Afrikaans",
    "Albanian",
    "Amharic",
    "Arabic",
    "Armenian",
    "Azerbaijani",
    'Basque',
    'Belarusian',
    'Bengali',
    'Bosnian',
    'Bulgarian',
    'Catalan',
    'Cebuano',
    'Chichewa',
    'Chinese Simplified',
    'Chinese Traditional',
    'Corsican',
    'Croatian',
    'Czech',
    'Danish',
    'Dutch',
    'English',
    'Esperanto',
    'Estonian',
    'Filipino',
    'Finnish',
    'French',
    'Frisian',
    'Galician',
    'Georgian',
    'German',
    'Greek',
    'Gujarati',
    'Haitian Creole',
    'Hausa',
    'Hawaiian',
    'Hebrew',
    'Hindi',
    'Hmong',
    'Hungarian',
    'Icelandic',
    'Igbo',
    'Indonesian',
    'Irish',
    'Italian',
    'Japanese',
    'Javanese',
    'Kannada',
    'Kazakh',
    'Khmer',
    'Korean',
    'Kurdish (Kurmanji)',
    'Kyrgyz',
    'Lao',
    'Latin',
    'Latvian',
    'Lithuanian',
    'Luxembourgish',
    'Macedonian',
    'Malagasy',
    'Malay',
    'Malayalam',
    'Maltese',
    'Maori',
    'Marathi',
    'Mongolian',
    'Myanmar (Burmese)',
    'Nepali',
    'Norwegian',
    'Pashto',
    'Persian',
    'Polish',
    'Portuguese',
    'Punjabi',
    'Romanian',
    'Russian',
    'Samoan',
    'Scots Gaelic',
    'Serbian',
    'Sesotho',
    'Shona',
    'Sindhi',
    'Sinhala',
    'Slovak',
    'Slovenian',
    'Somali',
    'Spanish',
    'Sundanese',
    'Swahili',
    'Swedish',
    'Tajik',
    'Tamil',
    'Telugu',
    'Thai',
    'Turkish',
    'Ukrainian',
    'Urdu',
    'Uzbek',
    'Vietnamese',
    'Welsh',
    'Xhosa',
    'Yiddish',
    'Yoruba',
    'Zulu'
  ];

  // output and input
  String out;
  final lang = TextEditingController();

  void trans() {
    // define
    if (selectedLanguage == 'Afrikaans') {
      _transalateLanguage = 'au';
    } else if (selectedLanguage == 'Albanian') {
      _transalateLanguage = 'sq';
    } else if (selectedLanguage == 'Amharic') {
      _transalateLanguage = 'am';
    } else if (selectedLanguage == 'Albanian') {
      _transalateLanguage = 'sq';
    } else if (selectedLanguage == '"Arabic"') {
      _transalateLanguage = 'ar';
    } else if (selectedLanguage == 'Azerbaijani') {
      _transalateLanguage = 'az';
    } else if (selectedLanguage == 'Basque') {
      _transalateLanguage = 'eu';
    } else if (selectedLanguage == 'Belarusian') {
      _transalateLanguage = 'be';
    } else if (selectedLanguage == 'Bengali') {
      _transalateLanguage = 'bn';
    } else if (selectedLanguage == 'Bosnian') {
      _transalateLanguage = 'bs';
    } else if (selectedLanguage == 'Bulgarian') {
      _transalateLanguage = 'bg';
    } else if (selectedLanguage == 'Catalan') {
      _transalateLanguage = 'ca';
    } else if (selectedLanguage == 'Cebuano') {
      _transalateLanguage = 'ceb';
    } else if (selectedLanguage == 'Chichewa') {
      _transalateLanguage = 'ny';
    } else if (selectedLanguage == 'Chinese Simplified') {
      _transalateLanguage = 'zh-cn';
    } else if (selectedLanguage == 'Chinese Traditional') {
      _transalateLanguage = 'zh-tw';
    } else if (selectedLanguage == 'Corsican') {
      _transalateLanguage = 'co';
    } else if (selectedLanguage == 'Croatian') {
      _transalateLanguage = 'hr';
    } else if (selectedLanguage == 'Czech') {
      _transalateLanguage = 'cs';
    } else if (selectedLanguage == 'Danish') {
      _transalateLanguage = 'da';
    } else if (selectedLanguage == 'Dutch') {
      _transalateLanguage = 'nl';
    } else if (selectedLanguage == 'English') {
      _transalateLanguage = 'en';
    } else if (selectedLanguage == 'Esperanto') {
      _transalateLanguage = 'et';
    } else if (selectedLanguage == 'Filipino') {
      _transalateLanguage = 'tl';
    } else if (selectedLanguage == 'Finnish') {
      _transalateLanguage = 'fi';
    } else if (selectedLanguage == 'French') {
      _transalateLanguage = 'fr';
    } else if (selectedLanguage == 'Frisian') {
      _transalateLanguage = 'fy';
    } else if (selectedLanguage == 'Galician') {
      _transalateLanguage = 'gl';
    } else if (selectedLanguage == 'Georgian') {
      _transalateLanguage = 'ka';
    } else if (selectedLanguage == 'German') {
      _transalateLanguage = 'de';
    } else if (selectedLanguage == 'Greek') {
      _transalateLanguage = 'el';
    } else if (selectedLanguage == 'Gujarati') {
      _transalateLanguage = 'gu';
    } else if (selectedLanguage == 'Haitian Creole') {
      _transalateLanguage = 'ht';
    } else if (selectedLanguage == 'Hausa') {
      _transalateLanguage = 'ha';
    } else if (selectedLanguage == 'Hawaiian') {
      _transalateLanguage = 'haw';
    } else if (selectedLanguage == 'Hebrew') {
      _transalateLanguage = 'iw';
    } else if (selectedLanguage == 'Hindi') {
      _transalateLanguage = 'hi';
    } else if (selectedLanguage == 'Hmong') {
      _transalateLanguage = 'hmn';
    } else if (selectedLanguage == 'Hungarian') {
      _transalateLanguage = 'hu';
    } else if (selectedLanguage == 'Icelandic') {
      _transalateLanguage = 'is';
    } else if (selectedLanguage == 'Igbo') {
      _transalateLanguage = 'ig';
    } else if (selectedLanguage == 'Indonesian') {
      _transalateLanguage = 'id';
    } else if (selectedLanguage == 'Irish') {
      _transalateLanguage = 'ga';
    } else if (selectedLanguage == 'Italian') {
      _transalateLanguage = 'it';
    } else if (selectedLanguage == 'Japanese') {
      _transalateLanguage = 'ja';
    } else if (selectedLanguage == 'Javanese') {
      _transalateLanguage = 'jw';
    } else if (selectedLanguage == 'Kannada') {
      _transalateLanguage = 'kn';
    } else if (selectedLanguage == 'Kazakh') {
      _transalateLanguage = 'kk';
    } else if (selectedLanguage == 'Khmer') {
      _transalateLanguage = 'km';
    } else if (selectedLanguage == 'Korean') {
      _transalateLanguage = 'ko';
    } else if (selectedLanguage == 'Kurdish (Kurmanji)') {
      _transalateLanguage = 'ku';
    } else if (selectedLanguage == 'Kyrgyz') {
      _transalateLanguage = 'ky';
    } else if (selectedLanguage == 'Lao') {
      _transalateLanguage = 'lo';
    } else if (selectedLanguage == 'Latin') {
      _transalateLanguage = 'la';
    } else if (selectedLanguage == 'Latvian') {
      _transalateLanguage = 'lv';
    } else if (selectedLanguage == 'Lithuanian') {
      _transalateLanguage = 'lt';
    } else if (selectedLanguage == 'Luxembourgish') {
      _transalateLanguage = 'lb';
    } else if (selectedLanguage == 'Macedonian') {
      _transalateLanguage = 'mk';
    } else if (selectedLanguage == 'Malagasy') {
      _transalateLanguage = 'mg';
    } else if (selectedLanguage == 'Malay') {
      _transalateLanguage = 'ms';
    } else if (selectedLanguage == 'Malayalam') {
      _transalateLanguage = 'ml';
    } else if (selectedLanguage == 'Maltese') {
      _transalateLanguage = 'mt';
    } else if (selectedLanguage == 'Maori') {
      _transalateLanguage = 'mi';
    } else if (selectedLanguage == 'Marathi') {
      _transalateLanguage = 'mr';
    } else if (selectedLanguage == 'Mongolian') {
      _transalateLanguage = 'mn';
    } else if (selectedLanguage == 'Myanmar (Burmese)') {
      _transalateLanguage = 'my';
    } else if (selectedLanguage == 'Nepali') {
      _transalateLanguage = 'ne';
    } else if (selectedLanguage == 'Norwegian') {
      _transalateLanguage = 'no';
    } else if (selectedLanguage == 'Pashto') {
      _transalateLanguage = 'ps';
    } else if (selectedLanguage == 'Persian') {
      _transalateLanguage = 'fa';
    } else if (selectedLanguage == 'Polish') {
      _transalateLanguage = 'pl';
    } else if (selectedLanguage == 'Portuguese') {
      _transalateLanguage = 'pt';
    } else if (selectedLanguage == 'Punjabi') {
      _transalateLanguage = 'pa';
    } else if (selectedLanguage == 'Romanian') {
      _transalateLanguage = 'ro';
    } else if (selectedLanguage == 'Russian') {
      _transalateLanguage = 'ru';
    } else if (selectedLanguage == 'Scots Gaelic') {
      _transalateLanguage = 'gd';
    } else if (selectedLanguage == 'Serbian') {
      _transalateLanguage = 'sr';
    } else if (selectedLanguage == 'Sesotho') {
      _transalateLanguage = 'st';
    } else if (selectedLanguage == 'Shona') {
      _transalateLanguage = 'sn';
    } else if (selectedLanguage == 'Sindhi') {
      _transalateLanguage = 'sd';
    } else if (selectedLanguage == 'Sinhala') {
      _transalateLanguage = 'si';
    } else if (selectedLanguage == 'Slovak') {
      _transalateLanguage = 'sk';
    } else if (selectedLanguage == 'Slovenian') {
      _transalateLanguage = 'sl';
    } else if (selectedLanguage == 'Somali') {
      _transalateLanguage = 'so';
    } else if (selectedLanguage == 'Spanish') {
      _transalateLanguage = 'es';
    } else if (selectedLanguage == 'Sundanese') {
      _transalateLanguage = 'su';
    } else if (selectedLanguage == 'Swahili') {
      _transalateLanguage = 'sw';
    } else if (selectedLanguage == 'Swedish') {
      _transalateLanguage = 'sv';
    } else if (selectedLanguage == 'Tajik') {
      _transalateLanguage = 'tg';
    } else if (selectedLanguage == 'Tamil') {
      _transalateLanguage = 'ta';
    } else if (selectedLanguage == 'Telugu') {
      _transalateLanguage = 'te';
    } else if (selectedLanguage == 'Thai') {
      _transalateLanguage = 'th';
    } else if (selectedLanguage == 'Turkish') {
      _transalateLanguage = 'tr';
    } else if (selectedLanguage == 'Ukrainian') {
      _transalateLanguage = 'uk';
    } else if (selectedLanguage == 'Urdu') {
      _transalateLanguage = 'ur';
    } else if (selectedLanguage == 'Uzbek') {
      _transalateLanguage = 'uz';
    } else if (selectedLanguage == 'Vietnamese') {
      _transalateLanguage = 'vi';
    } else if (selectedLanguage == 'Welsh') {
      _transalateLanguage = 'cy';
    } else if (selectedLanguage == 'Xhosa') {
      _transalateLanguage = 'xh';
    } else if (selectedLanguage == 'Yiddish') {
      _transalateLanguage = 'yi';
    } else if (selectedLanguage == 'Yoruba') {
      _transalateLanguage = 'yo';
    } else if (selectedLanguage == 'Zulu') {
      _transalateLanguage = 'zu';
    }

    translator.translate(lang.text, to: "$_transalateLanguage").then((value) {
      setState(() {
        out = value.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: 'Flutter',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF121212),
                      fontFamily: 'PoppinsBold')),
              TextSpan(
                  text: 'Translate',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      fontFamily: 'PoppinsBold')),
            ],
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFF121212),
                  ),
                  child: Center(
                    child: TextField(
                      onChanged: (value) {
                        setState(() {});
                      },
                      controller: lang,
                      minLines: 5,
                      maxLines: 999,
                      decoration: InputDecoration(
                        hintText: "Tap to enter text",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontFamily: 'PoppinsReg',
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                      style: TextStyle(
                          fontFamily: 'PoppinsReg',
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              
              Padding(
                padding: const EdgeInsets.only(right: 198.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    items: listLanguage.map<DropdownMenuItem>((value) {
                      return DropdownMenuItem(child: Text(value), value: value);
                    }).toList(),

                    // text
                    value: selectedLanguage,
                    style: TextStyle(
                        fontFamily: 'PoppinsReg', color: Colors.black),
                    onChanged: (value) {
                      setState(() {
                        selectedLanguage = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blue[400],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 15.0, left: 10.0, right: 10.0),
                    child: SelectableText(
                      out == null ? "" : out,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'PoppinsReg',
                      ),
                      
                      showCursor: true,
                      cursorColor: Colors.white,

                      minLines: 5,
                      maxLines: 999,
                      scrollPhysics: ClampingScrollPhysics(),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red[400],
                    ),
                    child: FlatButton(
                      onPressed: () {
                        trans();
                      },
                      child: Text("Translate",
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'PoppinsBold')),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
