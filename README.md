# food_ui

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## move to another screen
Navigator.push(
context,
MaterialPageRoute(builder: (context) => SecondScreen()),
);

## replace current screen with new screen
Navigator.pushReplacement(
context,
MaterialPageRoute(builder: (context) => SecondScreen()),
);

Image.asset(
'assets/images/geeksforgeeks.jpg',
height: 400,
width: 400,
), 



## Dropdown sample
String selectedValue = "chennai";
final List<String> dropdownItems = [
'chennai',
'mumbai',
'bihar',
];
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




## Sample get method service
https://fakestoreapi.com/products



## sample get method fetch
Future<void> fetchDataList() async {
Dio dio = Dio();
String url = 'https://fakestoreapi.com/products';

    final response = await dio.get(url);
    List<dynamic> data = response.data;

    setState(() {
      lst_Food = data.map((json) => Food.fromJson(json)).toList();
      isLoading = false;
    });

}