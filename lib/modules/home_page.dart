// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:optica_app/models/home_page/page_view_model.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: PageView(
          scrollDirection: Axis.horizontal,
          children: [
            ZapisatsyaWidget(
              item: firstPage,
            ),
            ZapisatsyaWidget(
              item: secondPage,
            ),
          ],
        ),
      ),
    );
  }
}

class ZapisatsyaWidget extends StatelessWidget {
  const ZapisatsyaWidget({
    Key? key,
    required this.item,
  }) : super(key: key);
  final PageViewModel item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(item.image),
        Padding(
          padding: const EdgeInsets.only(top: 80, left: 20),
          child: Text(
            item.title,
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: const Color(0xFF000000),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150, left: 20),
          child: Text(
            item.text,
            style: const TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 210, left: 20),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 40, vertical: 10),
              backgroundColor: const Color(0xFF008080),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              textStyle: GoogleFonts.openSans(
                  fontWeight: FontWeight.w700, fontSize: 15),
            ),
            child: const Text('Записаться'),
          ),
        ),
      ],
    );
  }
}
