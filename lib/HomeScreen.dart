import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'Model/model.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  TextEditingController Edt_Search = new TextEditingController();

  List<Food> lst_Food = [
    Food(Foodname: 'pizza',Foodimage:'assets/images/food_1.jpg' ),
    Food(Foodname: 'pasta',Foodimage:'assets/images/food_2.jpg'),
    Food(Foodname: 'pizza',Foodimage:'assets/images/food_1.jpg' ),
    Food(Foodname: 'pasta',Foodimage:'assets/images/food_2.jpg'),
    Food(Foodname: 'pizza',Foodimage:'assets/images/food_1.jpg' ),
    Food(Foodname: 'pasta',Foodimage:'assets/images/food_2.jpg')
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: lst_Food.length,
                  itemBuilder: (context,index){
                    return CardFoood(lst_Food[index].Foodimage,lst_Food[index].Foodname);
                  }
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget TextName(String Data){
    return Text('$Data',);
  }

  Widget CardFoood(String? Images,String? name){
    return Card(
      child: SizedBox(
        width: 250,
        height: 210,
        child: Column(
          children: [
            Image.network(Images.toString(),height: 100,width: 100,),
            SizedBox(height: 10,),
            TextName(name.toString()),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }




}





















// Expanded(
//   child: ListView(
//     children: [
//       CardFoood('assets/images/food_1.jpg'),
//       CardFoood('assets/images/food_1.jpg'),
//       CardFoood('assets/images/food_1.jpg'),
//       CardFoood('assets/images/food_1.jpg'),
//       CardFoood('assets/images/food_1.jpg'),
//     ],
//   ),
// ),
// SingleChildScrollView(
//   scrollDirection: Axis.horizontal,
//   child: Expanded(
//     child: Row(
//       children: [
//         CardFoood('assets/images/food_1.jpg'),
//         CardFoood('assets/images/food_2.jpg'),
//         CardFoood('assets/images/food_3.jpg'),
//         CardFoood('assets/images/food_4.jpg'),
//         CardFoood('assets/images/food_5.jpg'),
//       ],
//     ),
//   ),
// ),

// SizedBox(height: 30,),
// Row(
// children: [
// TextName('Hey Halal,'),
// SizedBox(width: 10),
// Text('Good Afternoon,',style: TextStyle(fontWeight: FontWeight.bold),)
// ],
// ),
// SizedBox(height: 30,),
// TextField(
// controller: Edt_Search,
// ),
// SizedBox(height: 30,),
// Row(
// children: [
// TextName('Categories'),
// Spacer(),
// InkWell(
// onTap: (){
//
// }, child: Text('See All')
// )
// ],
// ),
// SizedBox(height: 30,),