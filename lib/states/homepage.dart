import 'package:bullungthong/backends/google_sign_in_provider.dart';
import 'package:bullungthong/config/my_setting.dart';
import 'package:bullungthong/config/show_image.dart';
import 'package:bullungthong/config/show_title.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

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
              child: ShowImage(path: MySetting.logo3Img, height: 200, width: 200),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(child: ShowTitle(text: MySetting.appName, style: MySetting().customStyle(32, Colors.black, TextDecoration.none))),
            ),
            SizedBox(height: 200),
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
                      buildGoogle(context),
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
            TextButton(onPressed: () {
              showModalBottomSheet(
                isScrollControlled: false,
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                ),
                builder: (context) => Container(
                  child:  Padding(
                  padding: EdgeInsets.fromLTRB(10, 25, 10, 8),
                  child: ListView(
                      children: <Widget>[
                        ShowTitle(text: "ข้อตกลงในการใช้ซอฟต์แวร์", style: MySetting().customKanitStyle(24, Colors.black, TextDecoration.underline)),
                        SizedBox(height: 10),
                        ShowTitle(text: "       ซอฟต์แวร์นี้เป็นผลงานที่พัฒนาขึ้นโดย ด.ช.คเชนทร์ชัย ใจกล้า จากโรงเรียนภูเก็ตวิทยาลัย ภายใต้การดูแลของ ว่าที่ ร.ต. ชนะภัย ชลธาร ภายใต้โครงการบัลลังก์ทองซึ่งสนับสนุนโดยศูนย์เทคโนโลยีอิเล็กทรอนิกส์และคอมพิวเตอร์แห่งชาติโดยมีวัตถุประสงค์เพื่อการแก้ปัญหาเรื่องการสัมผัสใกล้ชิดในสภาวะสถานการณ์โรค COVID-19 ระบาด ซึ่งผู้พัฒนาได้อนุญาตให้ศูนย์เทคโนโลยีอิเล็กทรอนิกส์และคอมพิวเตอร์แห่งชาติเผยแพร่ซอฟต์แวร์นี้ตาม“ต้นฉบับ”โดยไม่มีการแก้ไขดัดแปลงใดๆทั้งสิ้นให้แก่บุคคลทั่วไปได้ใช้เพื่อประโยชน์ส่วนบุคคลหรือประโยชน์ทางการศึกษาที่ไม่มีวัตถุประสงค์ในเชิงพาณิชย์โดยไม่คิดค่าตอบแทนการใช้ซอฟต์แวร์ดังนั้นศูนย์เทคโนโลยีอิเล็กทรอนิกส์และคอมพิวเตอร์แห่งชาติจึงไม่มีหน้าที่ในการดูแลบำรุงรักษาจัดการอบรมการใช้งานหรือพัฒนาประสิทธิภาพซอฟต์แวร์รวมทั้งไม่รับรองความถูกต้องหรือประสิทธิภาพการทำงานของซอฟต์แวร์ตลอดจนไม่รับประกันความเสียหายต่างๆ อันเกิดจากการใช้ซอฟต์แวร์นี้ทั้งสิ้น", style: MySetting().customKanitStyle(16, Colors.black, TextDecoration.none)),
                        SizedBox(height: 30),
                        ShowTitle(text: "License Agreement", style: MySetting().customKanitStyle(24, Colors.black, TextDecoration.underline)),
                        SizedBox(height: 10),
                        ShowTitle(text: "       This software is a work developed by Khachenchai Jaikla from Phuketwittayalai School under the provision of Chanapai Chonlathan under BunlungThong , which has been supported by the National Electronics and Computer Technology Center (NECTEC), in order to solve the problem of close contact in the situation of the COVID-19 epidemic. Therefore, the intellectual property of this software shall belong to the developer and the developer gives NECTEC a permission to distribute this software as an “as is ” and non-modified software for a temporary and non-exclusive use without remuneration to anyone for his or her own purpose or academic purpose, which are not commercial purposes.  In this connection, NECTEC and SIPA shall not be responsible to the user for taking care, maintaining, training or developing the efficiency of this software. Moreover, NECTEC shall not be liable for any error, software efficiency and damages in connection with or arising out of the use of the software.”", style: MySetting().customStyle(16, Colors.black, TextDecoration.none)),
                      ],
                    ),
                  ),
                ),
              );
            }, 
            child: ShowTitle(text: "ข้อตกลงในการใช้ซอฟต์แวร์", style: MySetting().customKanitStyle(15, Colors.purple.shade200, TextDecoration.underline),))
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

ElevatedButton buildGoogle(context) {
  return ElevatedButton.icon(
    style: ElevatedButton.styleFrom(
      primary: Color(0xfff2f2f2),
      onPrimary: Colors.black,
      maximumSize: Size(double.infinity, 50),
      elevation: 5,
    ),
    icon: FaIcon(FontAwesomeIcons.google, color: Colors.red,),
    label: Text("Sign in with Google"),
    onPressed: () {
      final provider =
        Provider.of<GoogleSignInProvider>(context, listen: false);
    },
  );
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


// child: Padding(
//       padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
//       child: Container(
//         decoration: BoxDecoration(
//             boxShadow: [
//               BoxShadow(
//                   color: Colors.grey, blurRadius: 10, offset: Offset(0, 10))
//             ],
//             borderRadius: BorderRadius.all(
//               Radius.circular(22),
//             ),
//             color: Color(0xfff2f2f2)),
//         padding: EdgeInsets.all(8.0),
//         height: 60,
//         child: Row(
//           // mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             ShowImage(
//               path: MySetting.googleImg,
//               height: 40,
//               width: 40,
//             ),
//             SizedBox(width: 15),
//             Text(
//               "Sign in with Google",
//               style: MySetting().customStyle(20, Colors.black, TextDecoration.none),
//             )
//           ],
//         ),
//       ),
//     ),
//     onTap: () => {});