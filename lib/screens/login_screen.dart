import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:uts/screens/home_screen.dart';
import 'package:uts/screens/signup_screen.dart';

class login_screen extends StatefulWidget {
  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  List<FocusNode> _focusNodes = [
    FocusNode(),
    FocusNode(),
  ];

  @override
  void initState() {
    _focusNodes.forEach((node) {
      node.addListener(() {
        setState(() {});
      });
    });
    super.initState();
  }

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool hidePass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/login.png")),
                  ),
                ),
                Text(
                  "Welcome back!",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Login in to your existant account to Q Allure",
                  style:
                      GoogleFonts.roboto(color: Colors.grey[500], fontSize: 16),
                ),
                SizedBox(
                  height: 30,
                ),
                Material(
                  elevation: 3.0,
                  borderRadius: BorderRadius.circular(30),
                  shadowColor: Colors.black,
                  child: TextFormField(
                    focusNode: _focusNodes[0],
                    controller: username,
                    style: GoogleFonts.roboto(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.person_outline,
                            color: _focusNodes[0].hasFocus
                                ? Colors.blue
                                : Colors.grey[350]),
                        hintText: "Username or Email",
                        hintStyle:
                            TextStyle(color: Colors.grey[350], fontSize: 15),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                width: 0, style: BorderStyle.none)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.blue, width: 2.0),
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                SizedBox(height: 15),
                Material(
                  elevation: 3.0,
                  borderRadius: BorderRadius.circular(30),
                  shadowColor: Colors.black,
                  child: TextFormField(
                    focusNode: _focusNodes[1],
                    style: GoogleFonts.roboto(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                    obscureText: hidePass,
                    controller: password,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.lock_outline_rounded,
                          color: _focusNodes[1].hasFocus
                              ? Colors.blue
                              : Colors.grey[350]),
                      hintText: "Password",
                      hintStyle:
                          TextStyle(color: Colors.grey[350], fontSize: 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                              width: 0, style: BorderStyle.none)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 2.0),
                          borderRadius: BorderRadius.circular(30)),
                      suffixIcon: IconButton(
                        onPressed: () {
                          print('Hide Password=$hidePass');
                          setState(() {
                            hidePass = !hidePass;
                          });
                        },
                        icon: Icon(
                          hidePass ? Icons.visibility_off : Icons.visibility,
                          color: Colors.grey[350],
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Fitur Dalam Pengembangan')));
                      },
                      child: Text('Forgot Password?',
                          style: GoogleFonts.roboto(color: Colors.black)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  width: 180,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      if (username.text == 'user_uts' &&
                          password.text == 'pass_uts') {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (_) => home_screen(),
                          ),
                        );
                        var box = Hive.box('userBox');
                        box.put('Login', true);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Username atau Password Salah !")));
                      }
                    },
                    child: Text(
                      'LOG IN',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Or connect using",
                  style: GoogleFonts.roboto(color: Colors.grey[400]),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Fitur Dalam Pengembangan')));
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/icons/facebook.png",
                            height: 15,
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "Facebook",
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        primary: Colors.blue[800],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Fitur Dalam Pengembangan')));
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/icons/google.png",
                            height: 15,
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            "Google",
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        primary: Colors.red[400],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: GoogleFonts.roboto(fontSize: 16),
                        ),
                        TextButton(
                            style: TextButton.styleFrom(primary: Colors.blue),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => signup_screen()));
                            },
                            child: Text(
                              'Sign Up',
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
