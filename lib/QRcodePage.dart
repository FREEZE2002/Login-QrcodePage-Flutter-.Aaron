//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrcodePage extends StatefulWidget {
  const QrcodePage({Key? key}) : super(key: key);

  @override
  State<QrcodePage> createState() => _QrcodePageState();
}

class _QrcodePageState extends State<QrcodePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network('https://i.imgur.com/VNJyJTN.jpg',
            fit: BoxFit.cover, height: 120.0, width: 110),
        Expanded(
          child: Scaffold(
            bottomNavigationBar: GNav(tabs: const [
              GButton(
                icon: Icons.cloud_outlined,
                text: ' Empreinte',
              ),
              GButton(
                icon: Icons.my_library_books_outlined,
                text: ' Tickets',
              ),
              GButton(
                icon: Icons.local_offer_outlined,
                text: ' Offres',
              ),
              GButton(
                icon: Icons.person_pin_outlined,
                text: ' Profil',
              )
            ]),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Présentez votre QR code à la caisse pour ajouter votre ticket',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 4.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: QrImage(
                    data: 'https://www.example.com',
                    version: QrVersions.auto,
                    size: 200.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 150.0,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 226, 230, 226),
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.green.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.camera_alt),
                          label: Text(
                            'Prendre une photo',
                            style:
                                TextStyle(color: Color.fromARGB(255, 10, 9, 9)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: Container(
                        height: 150.0,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 226, 230, 226),
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.green.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.cloud_upload),
                          label: Text(
                            'Importer',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
