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
            color: Colors.white,
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
              ),
            )
            ),

//          ingredientes

                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(16.0),
                    child: RaisedButton(
                      onPressed: () => debugPrint("Call modal window"),
                      color: Colors.black26,
                      splashColor:  Colors.blue,
                      child: Text("Add Ingredients")
                    )
                ),
Card(

  child:

Container(
height: 200.0,
 child:           ListView.builder(
                padding: EdgeInsets.all(16.0),
                itemExtent: 32.0,
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {

                  return Text('Ingredient $index',
                    style: TextStyle(
                        color: Colors.black
                    ),
                  );
                }
            ),
      ),


),


//instrucciones
            Container(
//                height: 320.0,
                color: Colors.white30,
                padding: EdgeInsets.all(16.0),
                child: TextField(
//            onChanged: (string) => debugPrint("Recipe Name"),
                  keyboardType: TextInputType.multiline,
//                  maxLines:,
                  autofocus: false,
                  controller: _userController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white70
                          )
                      ),
                      hintText: "Recipe Instructions",
                      icon: Icon(Icons.edit),
                      fillColor: Colors.black26
                  ),
                )
            ),

//            boton imagen
            Container(
                color: Colors.white,
                padding: EdgeInsets.all(16.0),
                child: RaisedButton(
                  onPressed: () => debugPrint("Select Recipe Image"),
                  color: Colors.black26,
                  splashColor:  Colors.blue,
                  child: Text("Select Image"),

                )
            ),

          ],
        )
    );

  }
}
