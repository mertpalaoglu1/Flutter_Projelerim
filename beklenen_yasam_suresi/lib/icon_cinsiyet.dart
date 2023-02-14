import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconCinsiyet extends StatelessWidget {
  final String? cinsiyet;
  final IconData? icon;

  IconCinsiyet({this.cinsiyet='Default değer',this.icon=FontAwesomeIcons.android}); //default değerler.

  @override
  Widget build(BuildContext context) {
    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Icon(
                            icon,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '$cinsiyet',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    );
  }
}