import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Colors.white),
    title: 'Recipes',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Recipes"),
      ),
      body: Register(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        onPressed: () => debugPrint("Quiere añadir"),
      )
    );
  }
}



class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final TextEditingController _userController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text("Login"),
        backgroundColor: Colors.black12,
      ),

      backgroundColor: Colors.blueGrey,
      body: Container(
          alignment: Alignment.topCenter,
          child: Column(
              children: <Widget>[
//                Image.asset("images/caos.jpg",
//                    height: 60.0,
//                    width: 60.0,
//                    color: Colors.purple
//                ),

//              Form
                Container(
                    height: 200.0,
                    width: 320.0,
                    color: Colors.white,

                    child: Column(
                        children: <Widget>[
                          TextField(
                            controller: _userController,
                            decoration: InputDecoration(
                                hintText: "User name", icon: Icon(Icons.person)
                            ),
                          )
                        ]
                    )

                ),
              ])
      ),
    );
  }
}


//
//
//
//
//
////clases para agregar receta
//class RegisterRecipe extends MyApp {
//
//
//  @override
//  Widget build(BuildContext context) {
//
////    return Container(
////      child: Row(
////      children: <Widget>[
////          Text("AYY weeeyyyy!")
////      ],
////        )
////      );
//
//
//  return Container(
//      alignment: Alignment.topCenter,
//      child: Column(
//          children: <Widget>[
//            Image.asset("images/caos.jpg",
//                height: 60.0,
//                width: 60.0,
//                color: Colors.purple
//            ),
//
////              Form
//            Container(
////                heght: 200.0,
//                width: 320.0,
//                color: Colors.white,
//
//                child: Column(
//                    children: <Widget>[
//                      TextField(
//                        controller: _userController,
//                        decoration: InputDecoration(
//                            hintText: "User name", icon: Icon(Icons.person)
//                        ),
//                      )
//                    ]
//                )
//
//            ),
//          ])
//  ),
//
//
//  }
//}
