import 'package:bullungthong/config/my_setting.dart';
import 'package:bullungthong/config/show_title.dart';
import 'package:flutter/material.dart';

class TermOfService extends StatelessWidget {
  const TermOfService({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffc4c4c4),
        title: ShowTitle(text: "ข้อตกลงในการใช้ซอฟต์แวร์", style: MySetting().customKanitStyle(24, Colors.black, TextDecoration.none),),
      ),
      body: SafeArea(
        child: Padding(
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
  }
}