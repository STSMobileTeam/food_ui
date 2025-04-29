import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';


import '../../Model/model.dart';
import 'bloc/homescreen_bloc.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  TextEditingController Edt_Search = new TextEditingController();

  List<Food> lst_Food = [
  ];


  late HomescreenBloc bloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    bloc = BlocProvider.of<HomescreenBloc>(context);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocListener<HomescreenBloc, HomescreenState>(
        listener: (context, state) {
          // TODO: implement listener}

          if(state is ImageChangedState){

            showDialog(context: context, builder: (context){
              return Dialog(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Center(child: Text("Image changed successfully")),
                ),
              );
            });

          }


        },
        child: BlocBuilder<HomescreenBloc, HomescreenState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        bloc.add(ImagechangingEvent());
                      },
                      child: Text("Click here", style: TextStyle(fontSize: 24),)
                  ),
                  if(bloc.isloadin)...[
                    CardFoood('assets/images/food_1.jpg', 'pizza')
                  ]
                  else
                    ...[
                      CardFoood('assets/images/food_4.jpg', 'pasta')
                    ]
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget TextName(String Data) {
    return Text('$Data',);
  }

  Widget CardFoood(String? Images, String? name) {
    return Center(
      child: SizedBox(
        width: 250,
        height: 250,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(Images.toString(), height: 100, width: 100,),
              SizedBox(height: 10,),
              TextName(name.toString()),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }


  Widget widget1() {
    return Column(
      children: [
        TextName("sample1"),
        TextName("sample1"),
        TextName("sample1"),
        TextName("sample1"),
      ],
    );
  }

  Widget widget2() {
    return Column(
      children: [
        TextName("sample2"),
        TextName("sample2"),
      ],
    );
  }


}


// Future<void> Fetchingdata() async {
//   Dio dio = Dio();
//
//   EasyLoading.show(status: "Loading");
//
//   final reponse = await dio.get("https://fakestoreapi.com/products");
//   List<dynamic> lst =reponse.data;
//
//   setState(() {
//
//     EasyLoading.dismiss();
//     isloadin=false;
//     lst_Food=lst.map((json) => Food.fromJson(json)).toList();
//   });
//
//
// }


// void sampleprint()async{
//
//   print("----start---");
//   Future.delayed(Duration(seconds: 5));
//   print("stop");
// }

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


// Expanded(
//   child: GridView.builder(
//       physics: NeverScrollableScrollPhysics(),
//       shrinkWrap: true,
//       padding: EdgeInsets.only(left: 10),
//       itemCount: lst_Food.length,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 35,
//           mainAxisSpacing: 25,
//           mainAxisExtent: 200
//       ),
//       itemBuilder: (BuildContext context,index){
//         return CardFoood(lst_Food[index].Foodimage,lst_Food[index].Foodname);
//       }),
// )
// Expanded(
//   child: ListView.builder(
//     itemCount: lst_Food.length,
//       itemBuilder: (context,index){
//         return CardFoood(lst_Food[index].Foodimage,lst_Food[index].Foodname);
//       }
//   ),
// )