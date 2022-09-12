import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mywidget extends StatelessWidget {
  Mywidget(this.img_url, this.name, this.color, this.ontap);
  String? img_url;
  String? name;
  Color? color;
  Function() ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 250,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(40)),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage('${img_url}'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "${name}",
              style: GoogleFonts.combo(fontSize: 40),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
