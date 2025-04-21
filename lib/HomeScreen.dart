import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  TextEditingController Edt_Search = new TextEditingController();

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
                Text('See All')
              ],
            ),
            SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Expanded(
                child: Row(
                  children: [
                    CardFoood('assets/images/food_1.jpg'),
                    CardFoood('assets/images/food_2.jpg'),
                    CardFoood('assets/images/food_3.jpg'),
                    CardFoood('assets/images/food_4.jpg'),
                    CardFoood('assets/images/food_5.jpg'),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget TextName(String Data){
    return Text('$Data',);
  }

  Widget CardFoood(String Images){
    return Card(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            Image.asset(Images,height: 100,width: 100,),
            SizedBox(height: 10,),
            TextName('Pizza'),
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
