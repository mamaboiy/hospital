import 'package:doctor/constants/constant.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _RegistrationState();
}

class _RegistrationState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _rePassword = TextEditingController();
  bool isObs = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login ",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height:200,
                  width: double.infinity,
                  color: Colors.blueGrey,
                  child: Text("Login to your\nAccount",style: myStyle(40,Colors.white,FontWeight.bold),),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    /// Email
                    TextFormField(
                      controller: _email,
                      decoration: InputDecoration(
                        label: Text("Email"), hintText: "Enter your email",
                        // hintStyle: TextStyle(color: Colors.purple)
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        suffix: Icon(
                            Icons.email_outlined), // suffixIcon: Icon(Icons.abc),
                        // prefix: Icon(Icons.abc),                    // prefixIcon: Icon(Icons.abc)
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!value.contains('@')) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    /// Password
                    TextFormField(
                      controller: _password,
                      obscureText: isObs,
                      decoration: InputDecoration(
                        label: Text("Password"),
                        hintText: "Enter your password",
                        // hintStyle: TextStyle(color: Colors.purple)
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        suffix: IconButton(
                          onPressed: () {
                            isObs = !isObs;
                            setState(() {});
                          },
                          icon: Icon(Icons.visibility),
                        ),
                        // suffixIcon: Icon(Icons.abc),                    // prefix: Icon(Icons.abc),
                        // prefixIcon: Icon(Icons.abc)
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    /// Re-password
                    SizedBox(height: 16.0),
                    Text('Or Login With'),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            // Process Google login
                          },
                          style: ElevatedButton.styleFrom(
                            // primary: Colors.white,
                            // onPrimary: Colors.black,
                            padding: EdgeInsets.symmetric(
                              horizontal: 32.0,
                              vertical: 16.0,
                            ),
                          ),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.account_circle, color: Colors.green),
                              SizedBox(width: 8.0),
                              Text('Google', style: TextStyle(color: Colors.black)),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Process Facebook login
                          },
                          style: ElevatedButton.styleFrom(
                            // primary: Colors.blue,
                            // onPrimary: Colors.white,
                            padding: EdgeInsets.symmetric(
                              horizontal: 32.0,
                              vertical: 16.0,
                            ),
                          ),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.facebook, color: Colors.blueAccent),
                              SizedBox(width: 8.0),
                              Text('Facebook', style: TextStyle(color: Colors.black)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    TextButton(
                      onPressed: () {
                        // Navigate to Register page
                      },
                      child: Text('Don\'t have an account? Register'),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      height: 70,
                      minWidth: MediaQuery.of(context).size.width * 0.8,
                      color: Colors.teal,
                      onPressed: () {
                        _formKey.currentState!.validate();
                      },
                      child: Text("Login",style: myStyle(30,Colors.white,FontWeight.bold),),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
