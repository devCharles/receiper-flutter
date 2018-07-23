import 'package:flutter/material.dart';

final nutrientData = {
  "CA": {"amount": 37.5, "unit": "mg"},
  "CHOCDF": {"amount": 342.1, "unit": "g"},
  "CHOLE": {"amount": 16.561, "unit": "mg"},
  "ENERC_KCAL": {"amount": 2135.9, "unit": "kcal"},
  "FAT": {"amount": 67.51, "unit": "g"},
  "FE": {"amount": 18.2, "unit": "mg"},
  "FIBTG": {"amount": 12.90, "unit": "g"},
  "FOLAC": {"amount": 385.0, "unit": "mcg"},
  "K": {"amount": 676.7, "unit": "mg"},
  "MG": {"amount": 133.07, "unit": "mg"},
  "NA": {"amount": 1038.89, "unit": "mg"},
  "NIA": {"amount": 19.49, "unit": "mg"},
  "P": {"amount": 381.19, "unit": "mg"},
  "PROCNT": {"amount": 35.99, "unit": "g"},
  "RIBF": {"amount": 1.6, "unit": "mg"},
  "SE": {"amount": 84.75, "unit": "mcg"},
  "SUGAR": {"amount": 74.49, "unit": "g"},
  "THIA": {"amount": 2.74, "unit": "mg"},
  "VITA_IU": {"amount": 5.0, "unit": "IU"},
  "VITB6A": {"amount": 0.11, "unit": "mg"},
  "VITD": {"amount": 28.39, "unit": "IU"},
  "VITK1": {"amount": 0.75, "unit": "mcg"},
  "ZN": {"amount": 2.93, "unit": "mg"},
  "SATFAT": {"amount": 4.2, "unit": "g"},
  "TRANSFAT": {"amount": 4.2, "unit": "g"},
  "FIBER": {"amount": 4.23456, "unit": "g"},
};

Widget nutrientValues() {
  //final n = (1.3456).toStringAsFixed(2);
  //final s = double.parse("1.2345");
  final nutrientTypes = [
    {"nutrient": "FAT", "name": "Total Fat", "sub": false},
    {"nutrient": "SATFAT", "name": "Saturated Fat", "sub": true},
    {"nutrient": "TRANSFAT", "name": "Trans Fat", "sub": true},
    {"nutrient": "CHOLE", "name": "Cholesterol", "sub": false},
    {"nutrient": "NA", "name": "Sodium", "sub": false},
    {
      "nutrient": "CHOCDF",
      "name": "Total Carbohidrate",
      "sub": false,
    },
    {"nutrient": "FIBER", "name": "Dietary Fiber", "sub": true},
    {"nutrient": "SUGAR", "name": "Sugars", "sub": true},
    {"nutrient": "PROCNT", "name": "Protein", "sub": false}
  ];

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: nutrientTypes
        .map((d) => nutrientLiner(
              nutrientName: d["name"],
              qty: nutrientData["${d["nutrient"]}"]["amount"],
              ptg: 0,
              sub: d["sub"],
              unit: nutrientData["${d["nutrient"]}"]["unit"],
            ))
        .toList(),
  );
}

Widget nutriHeader() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Nutrition Facts",
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.black, fontSize: 40.0, fontWeight: FontWeight.w700),
      ),
      Text(
        "Serving Size 8 oz",
        style: TextStyle(
            fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.w400),
      ),
      Text(
        "Servings Per Container 1.5",
        style: TextStyle(
            fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.w400),
      ),
      Container(
        margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
        height: 5.0,
        color: Colors.black,
      ),
      Text(
        "Ammount Per Serving",
        style: TextStyle(
            fontSize: 10.0, color: Colors.black, fontWeight: FontWeight.w800),
      ),
      Container(
        margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
        height: 1.0,
        color: Colors.black,
      ),
      Row(children: <Widget>[
        Text(
          "Calories ",
          style: TextStyle(
              fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.w900),
        ),
        Text(
          " 23",
          style: TextStyle(
              fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ]),
      Container(
          margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
          height: 3.0,
          color: Colors.black),
      Container(
        alignment: Alignment.topRight,
        child: Text(
          "% Daily Value*",
          textAlign: TextAlign.right,
          style: TextStyle(
              fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.w600),
        ),
      )
    ],
  );
}

Widget nutrientLiner({
  @required nutrientName,
  @required qty,
  ptg,
  sub: false,
  unit: "g",
}) {
  final textSize = 15.0;
  final textWeight1 = FontWeight.w900;
  final textWeight2 = FontWeight.w500;
  return Container(
      padding: (sub)
          ? EdgeInsetsDirectional.only(start: 26.0, end: 1.0)
          : EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
      child: Column(children: <Widget>[
        Container(
            margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
            height: 1.0,
            color: Colors.black),
        Row(
          children: <Widget>[
            Text(
              nutrientName,
              style: TextStyle(
                  fontSize: textSize,
                  color: Colors.black,
                  fontWeight: (sub) ? textWeight2 : textWeight1),
            ),
            Text(
              "  ${qty}${unit}",
              style: TextStyle(
                  fontSize: textSize,
                  color: Colors.black,
                  fontWeight: textWeight2),
            ),
            Expanded(
                // margin: const EdgeInsets.only(left: 100.0, right: 1.0),
                child: Text(
              ((ptg != null) ? "${ptg}%" : ""),
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: textSize,
                color: Colors.black,
                fontWeight: textWeight1,
              ),
            )),
          ],
        )
      ]));
}

Widget footerCalories({caloriesNum: 2000}) {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
          height: 5.0,
          color: Colors.black,
        ),
        Text(
          "Percent Daily Values are based on a ${caloriesNum} calories diet.",
          style: TextStyle(
              fontSize: 10.0, color: Colors.black, fontWeight: FontWeight.w400),
        )
      ]);
}
