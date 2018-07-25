import 'package:flutter/material.dart';
import 'package:recipes_app/PrincipalScreen.dart';
import 'package:recipes_app/Recipe.dart';

void main() => runApp(App());


final List<Widget> recipes = [
  RecipeWidget(
    nameOfRecipe: "Pizza",
    imageURL: "assets/img/Pizza.png",
    onTap: () => debugPrint("Edit pizza")
  ),
  RecipeWidget(
      nameOfRecipe: "Pizza 2",
      imageURL: "assets/img/Pizza.png",
      onTap: () => debugPrint("Edit pizza 2")
  ),

];

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      title: 'Recipes',
      home: PrincipalScreen(
        recipes: recipes,
        onAdd: () => debugPrint("Add elements"),
      ),
    );
  }
}
