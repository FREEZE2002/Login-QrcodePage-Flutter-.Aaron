import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutteraaron/QRcodePage.dart';
import 'package:google_fonts/google_fonts.dart';

/*void main() {
  runApp(MaterialApp(
      home: QrcodePage(), // Changement de la page de démarrage(démarrage QRcodePage)
    title: 'Mon application',
      ));
}*/
void main() {
  runApp(const MyApp()); //(démarrage LoginPage)
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'QrcodePage',
      routes: {
        '/second': (context) => QrcodePage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Transparent Login App',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  top: 200,
                  left: -100,
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: const BoxDecoration(
                      color: Color(0x304599ff),
                      borderRadius: BorderRadius.all(
                        Radius.circular(150),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: -10,
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Color(0x30cc33ff),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 80,
                      sigmaY: 80,
                    ),
                    child: Container(),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        _logo(),
                        const SizedBox(
                          height: 40,
                        ),
                        _loginLabel(),
                        const SizedBox(
                          height: 70,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold,
                            ),
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60.0),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          onChanged: (text) {
                            // Do something when the text changes
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Mot de passe',
                            labelStyle: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold,
                            ),
                            filled: true,
                            fillColor: Colors.grey[200],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60.0),
                            ),
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {});
                                _obscureText = !_obscureText;
                              },
                              child: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                          obscureText:
                              _obscureText, // Use the value of _isObscure
                          textInputAction: TextInputAction.done,
                          onChanged: (text) {
                            // Do something when the text changes
                          },
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text("Mot de passe oublié ?"))
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        _loginBtn(),
                        const SizedBox(
                          height: 90,
                        ),
                        _signUpLabel(
                            "Pas encore membre ?", const Color(0xff909090)),
                        const SizedBox(
                          height: 10,
                        ),
                        TextButton(
                            onPressed: () {}, child: const Text("S'inscrire")),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _signUpLabel(String label, Color textColor) {
  return Text(
    label,
    style: GoogleFonts.josefinSans(
      textStyle: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w800,
        fontSize: 18,
      ),
    ),
  );
}

Widget _loginBtn() {
  return Container(
    width: 190,
    height: 50,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 221, 105, 11),
      borderRadius: BorderRadius.circular(25), // valeur de rayon modifiée
    ),
    child: TextButton(
      onPressed: () {},
      child: Text(
        "Connexion",
        style: GoogleFonts.josefinSans(
          textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w800,
            fontSize: 24,
          ),
        ),
      ),
    ),
  );
}

Widget _labelTextInput(String label, String hintText, bool isPassword) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: GoogleFonts.josefinSans(
          textStyle: const TextStyle(
            color: Color(0xff8fa1b6),
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      TextField(
        obscureText: isPassword,
        cursorColor: Colors.red,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.josefinSans(
            textStyle: const TextStyle(
              color: Color(0xffc5d2e1),
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffdfe8f3)),
          ),
        ),
      ),
    ],
  );
}

Widget _loginLabel() {
  return Center(
    child: Text(
      "Bienvenue",
      style: GoogleFonts.josefinSans(
        textStyle: const TextStyle(
          color: Color.fromARGB(255, 58, 175, 146),
          fontWeight: FontWeight.w900,
          fontSize: 45,
        ),
      ),
    ),
  );
}

Widget _logo() {
  return Center(
    child: SizedBox(
      child: Image.network("https://i.imgur.com/VNJyJTN.jpg"),
      height: 120,
    ),
  );
}
