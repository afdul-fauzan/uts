import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts/screens/login_screen.dart';

class signup_screen extends StatefulWidget {
  const signup_screen({Key? key}) : super(key: key);

  @override
  State<signup_screen> createState() => _signup_screenState();
}

class _signup_screenState extends State<signup_screen> {
  List<FocusNode> _focusNodes = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => login_screen()));
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                "Let's Get Started!",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Create an account to Q Allure to get all features",
                  style: GoogleFonts.roboto(
                    color: Colors.grey[600],
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.circular(30),
                      shadowColor: Colors.black,
                      child: TextFormField(
                        focusNode: _focusNodes[0],
                        style: GoogleFonts.roboto(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(Icons.person_outlined,
                                color: _focusNodes[0].hasFocus
                                    ? Colors.blue
                                    : Colors.grey[350]),
                            hintText: "Full Name",
                            hintStyle: TextStyle(
                                color: Colors.grey[350], fontSize: 15),
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
                    SizedBox(
                      height: 20,
                    ),
                    Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.circular(30),
                      shadowColor: Colors.black,
                      child: TextFormField(
                        focusNode: _focusNodes[1],
                        style: GoogleFonts.roboto(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(Icons.email_outlined,
                                color: _focusNodes[1].hasFocus
                                    ? Colors.blue
                                    : Colors.grey[350]),
                            hintText: "Email",
                            hintStyle: TextStyle(
                                color: Colors.grey[350], fontSize: 15),
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
                    SizedBox(
                      height: 20,
                    ),
                    Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.circular(30),
                      shadowColor: Colors.black,
                      child: TextFormField(
                        focusNode: _focusNodes[2],
                        style: GoogleFonts.roboto(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(Icons.phone_iphone_outlined,
                                color: _focusNodes[2].hasFocus
                                    ? Colors.blue
                                    : Colors.grey[350]),
                            hintText: "Phone",
                            hintStyle: TextStyle(
                                color: Colors.grey[350], fontSize: 15),
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
                    SizedBox(
                      height: 20,
                    ),
                    Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.circular(30),
                      shadowColor: Colors.black,
                      child: TextFormField(
                        focusNode: _focusNodes[3],
                        style: GoogleFonts.roboto(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(Icons.lock_outlined,
                                color: _focusNodes[3].hasFocus
                                    ? Colors.blue
                                    : Colors.grey[350]),
                            hintText: "Password",
                            hintStyle: TextStyle(
                                color: Colors.grey[350], fontSize: 15),
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
                    SizedBox(
                      height: 20,
                    ),
                    Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.circular(30),
                      shadowColor: Colors.black,
                      child: TextFormField(
                        focusNode: _focusNodes[4],
                        style: GoogleFonts.roboto(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(Icons.lock_outlined,
                                color: _focusNodes[4].hasFocus
                                    ? Colors.blue
                                    : Colors.grey[350]),
                            hintText: "Confirm Password",
                            hintStyle: TextStyle(
                                color: Colors.grey[350], fontSize: 15),
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
                    SizedBox(
                      height: 45,
                    ),
                    SizedBox(
                      height: 50,
                      width: 180,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue[700],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Fitur Dalam Pengembangan')));
                        },
                        child: Text(
                          'CREATE',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => login_screen()));
                          },
                          child: Text(
                            'Login here',
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.blue),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
