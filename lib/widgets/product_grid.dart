import 'package:online_shopping_app_flutter/models/product_model.dart';
import 'package:online_shopping_app_flutter/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatefulWidget {
  final List<Product> product;

  const ProductGrid({super.key, required this.product});

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(6),
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
      children: widget.product.map((product) =>
          ProductCard(id: product.id, name: product.name, image: product.image, description: product.description, price: product.price),
      ).toList(),
    );
  }
}

