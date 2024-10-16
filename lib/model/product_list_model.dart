class ProductModel {
  List<Productlist>? productlist;

  ProductModel({this.productlist});

  ProductModel.fromJson(Map<String, dynamic> json) {
    if (json['productlist'] != null) {
      productlist = <Productlist>[];
      json['productlist'].forEach((v) {
        productlist!.add(Productlist.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.productlist != null) {
      data['productlist'] = this.productlist!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Productlist {
  int? id;
  String? name;
  int? price; // Changed from String to int
  dynamic image;

  Productlist({this.id, this.name, this.price, this.image});

  Productlist.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price']; // Ensure this matches the new type
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['image'] = this.image;
    return data;
  }
}