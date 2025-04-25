class Food {
  String? Foodname;
  String? Foodimage;

  Food({required this.Foodname, required this.Foodimage});

  Food.fromJson(Map<String, dynamic> json) {
      Foodname= json['title'];
      Foodimage= json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.Foodname;
    data['image'] = this.Foodimage;
    return data;
  }

}