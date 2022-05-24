import 'package:final_project/LogInScreen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(
            height: 140,
          ),
        //  Image.asset('images/logo.png'),
          SizedBox(
            height: 15,
          ),
          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[400]),
                hintText: "First Name",
                fillColor: Colors.white70),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[400]),
                hintText: "Last Name",
                fillColor: Colors.white70),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[400]),
                hintText: "Email Address",
                fillColor: Colors.white70),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[400]),
                hintText: "Password",
                fillColor: Colors.white70),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => LogInScreen()));


              // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)){
              //   LogInScreen();
              // }) ;
            },
            child: const Text(
              'REGISTER',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xffECB7BF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              minimumSize: const Size(double.infinity, 55),
            ),
          ),
          SizedBox(
            height: 150,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  Text(
                    'Login Now',
                    style: TextStyle(
                        color: Color(
                          0xffC99200,
                        ),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
