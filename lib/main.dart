import 'dart:async';

import 'package:final_project/RegisterScreen.dart';
import 'package:final_project/Screen/AddTodo.dart';
import 'package:final_project/Screen/SignUp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

import 'Screen/HomePage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MaterialApp(home: HomePage() ,));
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return _MyAppState();
  }

}


class _MyAppState extends State<MyApp> {
  firebase_auth.FirebaseAuth auth = firebase_auth.FirebaseAuth.instance;

  void signUp () async{
    try{

      await auth.createUserWithEmailAndPassword(email: "hind@gmail.com", password: "1233456");
    }catch(e){
      print(e);
    }

  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(appBar: AppBar(title: Text("Hind"),),

   body: Center(child: ElevatedButton(onPressed: (){signUp();},child: Text("Sign Up"),),),
   );
  }

}
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Splash Screen',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: MyHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
//
//
// class Weclomee extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Splash Screen',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: MyHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 3),
//             ()=>Navigator.pushReplacement(context,
//             MaterialPageRoute(builder:
//                 (context) =>
//                 RegisterScreen()
//             )
//         )
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return   Scaffold(
//
//       backgroundColor: Color(0xFF33907C),
//       body: Container(
//         alignment: Alignment.center,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image(
//               image: AssetImage('assets     /images/logo.jpg'),
//             ),
//             Text(
//               'My Task',
//               style: TextStyle(
//                   fontSize: 30,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'Montserrat'),
//             ),
//           ],
//         ),
//         //
//         // appBar: AppBar(title:Text("GeeksForGeeks")),
//         // body: Center(
//         //     child:Text("Home page",textScaleFactor: 2,)
//         // ),
//       ),
//     );
//
//     // return Container(
//     //     color: Colors.white,
//     //     child: Column(children: [
//     //       Text("Hiiii") ,
//     //       Text("Hiiii2") ,
//     //     ],)
//     //
//     //
//     //    // FlutterLogo(size:MediaQuery.of(context).size.height)
//     // );
//   }
//}