// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: EdgeInsets.only(top: 85),
          child: Stack(children: [
            Container(
                margin: EdgeInsets.only(left: 35, right: 35),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.black),
                    color: Colors.white),
                child: ListView(
                  shrinkWrap: true,
                  children: [_tile("dnflsf", "dsflisnf", Icons.abc)],
                )),
            Align(
              alignment: FractionalOffset(0, -0.03),
              child: Container(
                height: 59,
                margin: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.black)),
                child: Column(children: [
                  TextField(
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration(
                        hintText: "Input kanji, kana, alphabet ...",
                        hintStyle: TextStyle(color: Color(0x00896969)),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.all(18),
                        prefixIconConstraints:
                            BoxConstraints(minWidth: 25, maxHeight: 25),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 20, right: 10),
                          child: Image(
                            image: AssetImage('assets/icons/ic_search.png'),
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none)),
                  )
                ]),
              ),
            )
          ]),
        ));
  }
}

ListTile _tile(String title, String subtitle, IconData icon) {
  return ListTile(
    title: Text(title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )),
    subtitle: Text(subtitle),
    leading: Icon(
      icon,
      color: Colors.blue[500],
    ),
  );
}
