import 'package:bullungthong/config/my_setting.dart';
import 'package:bullungthong/config/show_image.dart';
import 'package:bullungthong/config/show_title.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  

  @override
  Widget build(BuildContext context) {
    bool _toggled = true;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: ShowImage(path: MySetting.logoImg, height: 200, width: 200),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(child: ShowTitle(text: MySetting.appName, style: MySetting().customStyle(32, Colors.black, TextDecoration.none))),
            ),
            SizedBox(height: 230),
            TextButton(onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                ),
                context: context, 
                builder: (context) => Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      buildGoogle(),
                      buildFacebook(),
                      buildIndent(),
                      buildPhoneNumber(),
                      buildTerm(_toggled)
                    ],
                  ),
                )
              );
            }, 
            child: ShowTitle(text: "เข้าสู่ระบบ", style: MySetting().customKanitStyle(26, Colors.blue.shade300, TextDecoration.underline)))
          ],
        ),
      ),
    );
  }

  Padding buildTerm(bool _toggled) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SwitchListTile(
        controlAffinity: ListTileControlAffinity.leading,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ShowTitle(text: "ฉันยอมรับ", style: MySetting().customKanitStyle(15, Colors.black, TextDecoration.none),),
            TextButton(onPressed: () => print("Yo"), child: ShowTitle(text: "ข้อตกลงในการใช้ซอฟต์แวร์", style: MySetting().customKanitStyle(15, Colors.purple.shade200, TextDecoration.underline),))
          ],
        ),
        value: _toggled,
        onChanged: (bool value) {
          setState(() {
            _toggled = !_toggled;
            // value = _toggled;
          });
        }
        ),
    );
  }
}

// Container buildSignIn() {
//   bool _toggled = true;
//   return Container(
//     padding: EdgeInsets.all(16),
//     child: Column(
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         buildGoogle(),
//         buildFacebook(),
//         buildIndent(),
//         buildPhoneNumber(),
//       ],
//     ),
//   );
// }


InkWell buildGoogle() {
  return InkWell(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.grey, blurRadius: 10, offset: Offset(0, 10))
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(22),
            ),
            color: Color(0xfff2f2f2)),
        padding: EdgeInsets.all(8.0),
        height: 60,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ShowImage(
              path: MySetting.googleImg,
              height: 40,
              width: 40,
            ),
            SizedBox(width: 15),
            Text(
              "Sign in with Google",
              style: MySetting().customStyle(20, Colors.black, TextDecoration.none),
            )
          ],
        ),
      ),
    ),
    onTap: () => {print("object")});
}

InkWell buildFacebook() {
  return InkWell(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 10, offset: Offset(0, 10))
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(22),
              ),
              color: Color(0xff88afff)),
          padding: EdgeInsets.all(8.0),
          height: 60,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ShowImage(
                path: MySetting.facebookImg,
                height: 40,
                width: 40,
              ),
              SizedBox(width: 15),
              Text(
                "Sign in with Facebook",
                style: MySetting().customStyle(20, Colors.black, TextDecoration.none),
              )
            ],
          ),
        ),
      ),
      onTap: () => {print("object")});
}

Padding buildIndent() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          color: Colors.black,
          width: 100,
          height: 3,
        ),
        ShowTitle(
            text: "หรือ", style: MySetting().customKanitStyle(20, Colors.black, TextDecoration.none)),
        Container(
          color: Colors.black,
          width: 100,
          height: 3,
        ),
      ],
    ),
  );
}

InkWell buildPhoneNumber() {
  return InkWell(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 10, offset: Offset(0, 10))
              ],
              borderRadius: BorderRadius.all(
                Radius.circular(22),
              ),
              color: Color(0xff9eff8e)),
          padding: EdgeInsets.all(8.0),
          height: 60,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ShowImage(
                path: MySetting.callImg,
                height: 30,
                width: 30,
              ),
              SizedBox(width: 15),
              Text(
                "Sign in with phone number",
                style: MySetting().customStyle(20, Colors.black, TextDecoration.none),
              )
            ],
          ),
        ),
      ),
      onTap: () => {print("object")});
}