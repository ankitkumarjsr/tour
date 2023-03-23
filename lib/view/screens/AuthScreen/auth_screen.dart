import 'package:flutter/material.dart';
import 'package:tour/constants/images_constants.dart';

import '../home_screen.dart';
import '../loginpage.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool hide = true;
  final formKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // bottomSheet: Container(height: 55, width: 500, color: Colors.amberAccent,
      //   child: const Center(
      //       child: Text(
      //     "Login",
      //     style: TextStyle(color: Colors.pink, fontSize: 30, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
      //   )),
      // ),

      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(authBg),
          ),
        ),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.075,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 190),
                  child: Text(
                    "Travelogue",
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: merriStyle,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.yellow,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 230),
                  child: Text("𝐄𝐱𝐩𝐥𝐨𝐫𝐞 𝐈𝐧𝐝𝐢𝐚!!",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
                ),
                SizedBox(
                  height: height * 0.34,
                ),
                const Padding(
                    child: Text("Login",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue,
                          backgroundColor: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        )),
                    padding: EdgeInsets.only(right: 270)),
                SizedBox(
                  height: height * 0.0065,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    controller: usernameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Username Cannot Be Empty';
                      }
                    },
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.blueGrey,
                      labelText: "Username",
                      hintText: "Enter Your Email",
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.black,
                        size: 30,
                      ),
                      hintStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      labelStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.white70),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: hide,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blueGrey,
                      labelText: "Password",
                      hintText: "Enter Your Password",
                      prefixIcon: const Icon(
                        Icons.key,
                        size: 30,
                        color: Colors.black,
                      ),

                      suffixIcon: IconButton(
                        icon: hide
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                        color: Colors.black54,
                        onPressed: () {
                          setState(() {
                            hide = !hide;
                          });
                        },
                      ),

                      hintStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      labelStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          backgroundColor: Colors.white70,
                          letterSpacing: 0.5),
                      // helperText:
                      //     "Note:-Password Should Have More Than 5 Characters",
                      // helperStyle: TextStyle(color: Colors.red,
                      //     backgroundColor: Colors.black,
                      //     fontSize: 11,
                      //     fontWeight: FontWeight.bold,
                      //     wordSpacing: 2,
                      //     letterSpacing: 1),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.pink),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isNotEmpty) {
                        if (value.length >= 6) {
                          List<String> pass = value.split('');
                          int upper = 0, lower = 0, digit = 0;
                          for (String s in pass) {
                            if (s == '0' ||
                                s == '1' ||
                                s == '2' ||
                                s == '3' ||
                                s == '4' ||
                                s == '5' ||
                                s == '6' ||
                                s == '7' ||
                                s == '8' ||
                                s == '9') {
                              digit++;
                            } else if (s == s.toUpperCase()) {
                              upper++;
                            } else {
                              lower++;
                            }
                          }
                          if (upper >= 2 && lower >= 2 && digit >= 2) {
                            return null;
                          } else {
                            return "Password too weak";
                          }
                        }
                      }
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: InkWell(
                        child: SizedBox(
                          width: width * 0.88,
                          child: ElevatedButton(
                            child: const Text(
                              'Log In',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                print(usernameController.text);
                                print(passwordController.text);
                                if (usernameController.text == 'Ankit' &&
                                    passwordController.text == 'aaAA11') {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(duration: Duration(seconds: 1),
                                          content: Text(
                                              'Loading Please Wait...!!!')));
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Homescreen()));

                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text('Password Not Matched!!!!!',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)),
                                    backgroundColor: Colors.grey,
                                    duration: Duration(seconds: 1),
                                  ));
                                }
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: InkWell(
                        child: Text("Forgotten Your Login Details?",
                            style: TextStyle(
                                color: Colors.black,
                                backgroundColor: Colors.white70,
                                fontWeight: FontWeight.bold,
                                fontSize: 13)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 1),
                      child: TextButton(
                          onPressed: () =>() => Navigator.push(context, MaterialPageRoute(builder: (context) => First(),)),
                          child: const Text(
                            "Get Help In Logging In.",
                            style: TextStyle(
                                color: Colors.pink,
                                fontWeight: FontWeight.w900,
                                fontSize: 18),
                          )),
                    ),
                  ],
                ),
                Row(children: <Widget>[
                  new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: const Divider(
                        color: Colors.white,
                        height: 36,
                        thickness: 2,
                      )),
                  const Text("OR",
                      style: TextStyle(
                          backgroundColor: Colors.white,
                          fontWeight: FontWeight.bold)),
                  new Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                      child: const Divider(
                        color: Colors.white,
                        height: 36,
                        thickness: 2,
                      )),
                ]),
                Row(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Icon(Icons.facebook_rounded,
                        color: Colors.blue.shade900),
                  ),
                  Container(
                    child: Text("Log In With Facebook",
                        style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Colors.blue.shade900,
                            fontWeight: FontWeight.bold)),
                  ),
                ]),
                new Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                    child: const Divider(
                      color: Colors.white,
                      height: 36,
                      thickness: 2,
                    )),
                Row(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 59),
                      child: Text("Dont Have An Account?",
                          style: TextStyle(
                              color: Colors.blue,
                              backgroundColor: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 1),
                      child: TextButton(
                          onPressed: () => print('Tapped Sign Up'),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.pink,
                                fontWeight: FontWeight.w900,
                                fontSize: 22),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
