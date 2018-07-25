import 'package:flutter/material.dart';

class RecipeWidget extends StatelessWidget {
  final String nameOfRecipe;
  final String imageURL;
  final onTap;

  RecipeWidget(
      {Key key,
      @required this.nameOfRecipe,
      @required this.imageURL,
      this.onTap})
      : assert(nameOfRecipe != null),
        assert(imageURL != null);

  Widget recipeImage() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(imageURL),
        ),
      ),
    );
  }

  Widget recipeCard() {
    return Container(
      height: 124.0,
      margin: EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
        color: Colors.white70,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
            offset: Offset(0.0, 10.0),
          )
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(left: 46.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              nameOfRecipe,
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        child: InkWell(
          borderRadius: BorderRadius.circular(30.0),
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 24.0,
              ),
              child: Stack(
                children: <Widget>[
                  recipeCard(),
                  recipeImage(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
