import 'package:flutter/material.dart';
import 'package:recipes_app/Recipe.dart';



class PrincipalScreen extends StatelessWidget {

  final List<Widget> recipes;
  final onAdd;


  PrincipalScreen({@required this.recipes, @required this.onAdd})
      : assert(recipes != null);


  @override
  Widget build(BuildContext context) {

    var principalAppBar = AppBar(
      centerTitle: true,
      backgroundColor: Colors.indigo.shade500,
      elevation: 1.2,
      title: Text(
        "Reciper",
        style: TextStyle(
          fontSize: 22.0,
          color: Colors.blueGrey.shade50,
          fontWeight: FontWeight.w400,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.account_circle,
            color: Colors.white,
          ),
          onPressed: () => debugPrint("See Profile"),
        ),
      ]
    );

    var addOtherButton = FloatingActionButton(
      backgroundColor: Colors.indigoAccent,
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
      onPressed: () => debugPrint("Add other"),
    );



    return Scaffold(
      appBar: principalAppBar,
      floatingActionButton: addOtherButton,
      body: Column(
        children: recipes,
      )
    );
  }
}