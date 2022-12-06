import 'package:flutter/material.dart';

import 'MainPage.dart';
import 'Page_2.dart';
import 'Page_3.dart';

class Page_4 extends StatefulWidget {
  Page_4({Key? key}) : super(key: key);

  @override
  State<Page_4> createState() => _Page_4State();
}

class _Page_4State extends State<Page_4> {
  bool isMailEmpty = false;

  bool isPasswordEmpty = false;

  bool isFistNameEmpty = false;
  bool isLastNameEmpty = false;

  TextEditingController mail = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController firstname = TextEditingController();
  TextEditingController secondname = TextEditingController();

  bool visionIcon = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 38,
                right: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    height: 42,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 16, top: 9, bottom: 9, right: 40),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    spreadRadius: 0,
                                    offset: Offset(0, 4),
                                    color: Color(0xff000000).withOpacity(0.25))
                              ]),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('googlr.png'),
                                SizedBox(
                                  width: 23,
                                ),
                                Text(
                                  'Google',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15),
                                )
                              ]),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 23, top: 9, bottom: 9, right: 30),
                          decoration: BoxDecoration(
                              color: Color(0xff3498DB),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    spreadRadius: 0,
                                    offset: Offset(0, 4),
                                    color: Color(0xff000000).withOpacity(0.25))
                              ]),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('facebook.png'),
                                SizedBox(
                                  width: 23,
                                ),
                                Text(
                                  'Facebook',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15),
                                )
                              ]),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 37,
                  ),
                  Center(
                      child: Text(
                    "Or Sign up using",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  )),
                  SizedBox(
                    height: 37,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff000000).withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(0, 4)),
                        ]),
                    child: TextFormField(
                      controller: firstname,
                      onChanged: (c) {
                        isFistNameEmpty = false;
                        setState(() {});
                      },
                      style:
                          TextStyle(color: Color(0xff000000).withOpacity(0.5)),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "First Name",
                          hintStyle: TextStyle(
                              color: Color(0xff000000).withOpacity(0.5),
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                          contentPadding:
                              EdgeInsets.only(left: 44, top: 18, bottom: 18)),
                    ),
                  ),
                  isFistNameEmpty
                      ? Padding(
                          padding: const EdgeInsets.only(left: 18.0, top: 8),
                          child: Text(
                            "Enter your first name",
                            style: TextStyle(color: Colors.red),
                          ),
                        )
                      : SizedBox.shrink(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff000000).withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(0, 4)),
                        ]),
                    child: TextFormField(
                      controller: secondname,
                      onChanged: (c) {
                        isLastNameEmpty = false;
                        setState(() {});
                      },
                      style:
                          TextStyle(color: Color(0xff000000).withOpacity(0.5)),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Last Name",
                          hintStyle: TextStyle(
                              color: Color(0xff000000).withOpacity(0.5),
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                          contentPadding:
                              EdgeInsets.only(left: 44, top: 18, bottom: 18)),
                    ),
                  ),
                  isLastNameEmpty
                      ? Padding(
                          padding: const EdgeInsets.only(left: 18.0, top: 8),
                          child: Text(
                            "Enter your last name",
                            style: TextStyle(color: Colors.red),
                          ),
                        )
                      : SizedBox.shrink(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff000000).withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(0, 4)),
                        ]),
                    child: TextFormField(
                      controller: mail,
                      onChanged: (c) {
                        isMailEmpty = false;
                        setState(() {});
                      },
                      style:
                          TextStyle(color: Color(0xff000000).withOpacity(0.5)),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Mail",
                          hintStyle: TextStyle(
                              color: Color(0xff000000).withOpacity(0.5),
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                          contentPadding:
                              EdgeInsets.only(left: 44, top: 18, bottom: 18)),
                    ),
                  ),
                  isMailEmpty
                      ? Padding(
                          padding: const EdgeInsets.only(left: 18.0, top: 8),
                          child: Text(
                            "Enter your email",
                            style: TextStyle(color: Colors.red),
                          ),
                        )
                      : SizedBox.shrink(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff000000).withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(0, 4)),
                        ]),
                    child: TextFormField(
                        obscureText: visionIcon,
                        controller: password,
                        onChanged: (c) {
                          isPasswordEmpty = false;
                          setState(() {});
                        },
                        style: TextStyle(
                            color: Color(0xff000000).withOpacity(0.5)),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide.none),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Password",
                            hintStyle: TextStyle(
                                color: Color(0xff000000).withOpacity(0.5),
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                            contentPadding: EdgeInsets.only(
                              left: 44,
                              top: 18,
                              bottom: 18,
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: InkWell(
                                  onTap: () {
                                    visionIcon = !visionIcon;
                                    setState(() {});
                                  },
                                  child: visionIcon
                                      ? Icon(Icons.visibility,
                                          color: Color(0xff00CEC9))
                                      : Icon(Icons.visibility_off,
                                          color: Color(0xffC0C0C0))),
                            ))),
                  ),
                  isPasswordEmpty
                      ? Padding(
                          padding: const EdgeInsets.only(left: 18.0, top: 8),
                          child: Text(
                            "Enter your password",
                            style: TextStyle(color: Colors.red),
                          ),
                        )
                      : SizedBox.shrink(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Spacer(),
                      InkWell(
                        child: Text(
                          "Forgot your password?",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Page_3()));
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  InkWell(
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          color: Color(0xff00CEC9),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 4,
                                spreadRadius: 0,
                                offset: Offset(0, 4),
                                color: Color(0xff000000).withOpacity(0.25))
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Center(
                          child: Text(
                        'Log in',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      )),
                    ),
                    onTap: () {
                      if (mail.text.isEmpty) {
                        isMailEmpty = true;
                        setState(() {});
                      }
                      if (password.text.isEmpty) {
                        isPasswordEmpty = true;
                        setState(() {});
                      }
                      if (firstname.text.isEmpty) {
                        isFistNameEmpty = true;
                        setState(() {});
                      }
                      if (secondname.text.isEmpty) {
                        isLastNameEmpty = true;
                        setState(() {});
                      }
                      if (mail.text.isNotEmpty &&
                          password.text.isNotEmpty &&
                          firstname.text.isNotEmpty &&
                          secondname.text.isNotEmpty) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => MainPage()));
                      }
                    },
                  ),
                  Spacer(),
                  Center(
                    child: GestureDetector(
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: 'Already have an account? ',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                        TextSpan(
                            text: 'Sign in',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff00CEC9))),
                      ])),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Page_2()));
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
