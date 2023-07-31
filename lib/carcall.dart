import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Model
{
  String? image;

  Model(this.image);
}

List lis = modelDatab.map((e) => Model(e["image"])).toList();

var modelDatab = [
  {"image": "assets/kan3.jpg"},
  {"image": "assets/20ei.jpg"},
  {"image": "assets/adi.jpeg"},
  ];

////class for list one

class Model2{
  String? image2;
  String? text2;
  Model2(this.image2, this.text2);
}

List lis2 = modelDatab2.map((e) => Model2(e["image2"],e["text2"])).toList();

var modelDatab2 = [
  {"image2": "assets/adi.jpeg","text2":"Watch Popular Movies, TV Shows And Webseries"},
  {"image2": "assets/stre.jpg","text2":"Know Where To Watch What With Our Streaming Guide"},
  {"image2": "assets/ravita.jpg","text2":"Discover Music,Sports,News And So Much More In One App"},
];

///class for list two

class Model3
{
  String? image3;

  Model3(this.image3);
}

List lis3 = modelDatab3.map((e) => Model3(e["image3"])).toList();

var modelDatab3 = [
  {"image3": "assets/kan3.jpg"},
  {"image3": "assets/20ei.jpg"},
  {"image3": "assets/madm.jpeg"},
  {"image3": "assets/adi.jpeg"},
  {"image3": "assets/aot.jpeg"},
];// class for list 3

class Model4
{
  String? text4;
  Model4(this.text4);
}
List lis4 = modelDatab4.map((e) => Model4(e["text4"])).toList();
var modelDatab4 = [
  {"text4" : "Action"},
  {"text4" : "Comedy"},
  {"text4" : "Documentary"},
  {"text4" : "Drama"},
  {"text4" : "Horror"},
  {"text4" : "Thrillers"},
  {"text4" : "Family & Kids"},
  {"text4" : "Espanol"},
];

class Model5
{
  String? image5;

  Model5(this.image5);
}

List lis5 = modelDatab5.map((e) => Model5(e["image5"])).toList();

var modelDatab5 = [
  {"image5": "assets/kan3.jpg"},
  {"image5": "assets/20ei.jpg"},
  {"image5": "assets/madm.jpeg"},
  {"image5": "assets/adi.jpeg"},
  {"image5": "assets/aot.jpeg"},
];// class for list 3








