import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
//

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



//
//Clases registro
class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}


//
class _RegisterState extends State<Register> {

  final TextEditingController _userController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: Text("Register your Recipe",
            style: TextStyle(
                color: Colors.white70,
                fontSize: 14.0
            ),
          ),
          backgroundColor: Colors.white30,
        ),

        backgroundColor: Colors.white70,
        body: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
//            Nombre
            Container(
            color: Colors.lime,
            padding: EdgeInsets.all(16.0),
            child: TextField(
//            onChanged: (string) => debugPrint("Recipe Name"),
            autofocus: false,
            controller: _userController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white70
                )
              ),
              hintText: "Recipe Name",
              icon: Icon(Icons.fastfood),
              fillColor: Colors.black26
              )
            )
            ),

//            ingredientes
            Container(
              height: 250.0,
                color: Colors.white,
                padding: EdgeInsets.all(16.0),
//                child: ListView(
                  child:

                    ListView.builder(
                      padding: EdgeInsets.all(16.0),
                      itemExtent: 40.0,
                      itemBuilder: (BuildContext context, int index) {

                        return Text('Ingredient $index',
                        style: TextStyle(
                            color: Colors.black
                          ),
                        );

                        },
                    )



//                children: TextField(
////            onChanged: (string) => debugPrint("Ingredients list"),
//                    autofocus: false,
//                    controller: _userController,
//                    decoration: InputDecoration(
//                        border: OutlineInputBorder(
//                            borderSide: BorderSide(
//                                color: Colors.white70
//                            )
//                        ),
//                        hintText: "Ingredients",
//                        icon: Icon(Icons.fastfood),
//                        fillColor: Colors.black26
//                    )
//                )

//              )
            ),

//            boton imagen
            Container(
                color: Colors.greenAccent,
                padding: EdgeInsets.all(16.0),
                child: RaisedButton(
                  onPressed: () => debugPrint("Image selection"),
                  color: Colors.purple,
                  splashColor:  Colors.lightGreenAccent,
                  child: Text("Select Image"),
                )
            ),

          ],
        )
    );

  }
}



//class _RegisterState extends State<Register> {
//
//  final TextEditingController _userController = TextEditingController();
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//
//      appBar: AppBar(
//        centerTitle: true,
//        title: Text("Register your Recipe",
//          style: TextStyle(
//              color: Colors.white70,
//              fontSize: 14.0
//          ),
//        ),
//        backgroundColor: Colors.white30,
//      ),
//
//      backgroundColor: Colors.white70,
//      body: Container(
//          alignment: Alignment.topCenter,
//          child: Column(
//              children: <Widget>[
////              Form
//                Container(
//                    height: 220.0,
//                    width: 320.0,
//                    padding: EdgeInsets.only(top:32.0),
//                    color: Colors.black26,
//                    child: Column(
//                      mainAxisAlignment: MainAxisAlignment.,
//                        children: <Widget>[
//                          TextField(
//                            autofocus: true,
//                            controller: _userController,
//                            decoration: InputDecoration(
//                                hintText: "Recipe Name",
//                                icon: Icon(Icons.fastfood),
//                                fillColor: Colors.black26
//                                )
//                              ),
//
//                          TextField(
//                              autofocus: false,
//                              controller: _userController,
//                              decoration: InputDecoration(
//                                  hintText: "Recipe Ingredients",
//                                  icon: Icon(Icons.fastfood),
//                                  fillColor: Colors.black26
//                              )
//                          ),
//
//                          TextField(
//                              autofocus: false,
//                              controller: _userController,
//                              decoration: InputDecoration(
//                                  hintText: "Recipe Instructions",
//                                  icon: Icon(Icons.fastfood),
//                                  fillColor: Colors.black26
//                              )
//                          ),
//
////
////                          new Center(
////                            child:
//                            Container(
//                              margin: const EdgeInsets.all(10.0),
//                              color: const Color(0xFF00FF00),
//                              width: 88.0,
//                              height: 48.0,
//                            ),
////                          )
////
//
//                            ],
//                          ),
//                        )
//                      ]
//                    )
//                  )
//                );
//
//  }
//}