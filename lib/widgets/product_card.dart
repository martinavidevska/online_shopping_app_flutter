import 'package:online_shopping_app_flutter/models/product_model.dart';
import 'package:online_shopping_app_flutter/widgets/product_card_data.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget{
  final int id;
  final String name;
  final String image;
  final String description;
  final int price;

  const ProductCard({super.key, required this.id, required this.name, required this.image, required this.description, required this.price});
  
  @override
    Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        enableFeedback: true,
        splashColor: Colors.grey[50],
        onTap: () => {
          Navigator.pushNamed(context, "/details", arguments: Product(id:id, name: name, image: image, description:description, price:price))
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2),
              borderRadius: BorderRadius.circular(10)
          ),
          child: ProductCardData(image: image, name: name, price:price),
        ),
      ),
    );
  }
  
  
}