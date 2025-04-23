import 'dart:async';

import 'package:flutter/material.dart';

import 'Model/model.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  TextEditingController Edt_Search = new TextEditingController();

  List<String> lst= ['assets/images/food_1.jpg','assets/images/food_2.jpg'];

  List<Food> lst_Food = [
    Food(Foodname: 'pizza',Foodimage:'assets/images/food_1.jpg' ),
    Food(Foodname: 'pasta',Foodimage:'assets/images/food_2.jpg'),
    Food(Foodname: 'pizza',Foodimage:'assets/images/food_1.jpg' ),
    Food(Foodname: 'pasta',Foodimage:'assets/images/food_2.jpg'),
    Food(Foodname: 'pizza',Foodimage:'assets/images/food_1.jpg' ),
    Food(Foodname: 'pasta',Foodimage:'assets/images/food_2.jpg')
  ];




  String selectedValue = "chennai";


  final List<String> dropdownItems = [
    'chennai',
    'mumbai',
    'bihar',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              children: [
                TextName('Hey Halal,'),
                SizedBox(width: 10),
                Text('Good Afternoon,',style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: 30,),
            TextField(
              controller: Edt_Search,

            ),
            SizedBox(height: 30,),
            Row(
              children: [
                TextName('Categories'),
                Spacer(),
                InkWell(
                  onTap: (){

                  }, child: Text('See All')
                )
              ],
            ),
            SizedBox(height: 30,),
            SizedBox(
              height: 100,
              width: 300,
              child: DropdownButton<String>(
                value: selectedValue,
                items: dropdownItems.map((String value) => DropdownMenuItem<String>(
                  value: value,
                  child: Text(value,
                  ),
                )).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue=newValue!;
                  });
                },
              ),
            ),

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
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: lst_Food.length,
                  itemBuilder: (context,index){
                    return CardFoood(lst_Food[index].Foodimage,lst_Food[index].Foodname);
                  }
              ),
            )
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


          ],
        ),
      ),
    );
  }

  Widget TextName(String Data){
    return Text('$Data',);
  }

  Widget CardFoood(String Images,String name){
    return Card(
      child: SizedBox(
        width: 250,
        height: 190,
        child: Column(
          children: [
            Image.asset(Images,height: 100,width: 100,),
            SizedBox(height: 10,),
            TextName(name),
            SizedBox(height: 10,),
            Row(
              children: [
                TextName('Starting'),
                Spacer(),
                TextName('\$70'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

