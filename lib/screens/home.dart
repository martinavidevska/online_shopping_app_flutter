import 'package:online_shopping_app_flutter/models/product_model.dart';
import 'package:online_shopping_app_flutter/widgets/product_grid.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Product> product = [
    Product(
      id: 1,
      name: "Cotton T-Shirt",
      image: "https://i.pinimg.com/736x/9d/7b/f4/9d7bf4fb7ddfa285ff36fbb7630f4b05.jpg",
      description: "Soft, breathable 100% cotton T-shirt. Perfect for casual wear. Similar styles: Polo T-shirts, graphic tees.",
      price: 150,
    ),
    Product(
      id: 2,
      name: "Slim-Fit Blue Jeans",
      image: "https://i.pinimg.com/736x/9d/7b/f4/9d7bf4fb7ddfa285ff36fbb7630f4b05.jpg",
      description: "Durable denim with a modern slim fit. Made from 98% cotton, 2% spandex for flexibility. Similar styles: Black jeans, straight-fit denim.",
      price: 3999,
    ),
    Product(
      id: 3,
      name: "Insulated Winter Jacket",
      image: "https://i.pinimg.com/736x/9d/7b/f4/9d7bf4fb7ddfa285ff36fbb7630f4b05.jpg",
      description: "Warm and stylish, made with polyester filling for insulation. Water-resistant outer layer. Similar styles: Parkas, hooded coats.",
      price: 7999,
    ),
    Product(
      id: 4,
      name: "Classic White Sneakers",
      image: "https://i.pinimg.com/736x/9d/7b/f4/9d7bf4fb7ddfa285ff36fbb7630f4b05.jpg",
      description: "Comfortable sneakers with a rubber sole and breathable canvas upper. Ideal for casual or sporty outfits. Similar styles: Running shoes, slip-ons.",
      price: 4999,
    ),
     Product(
      id: 5,
      name: "Woolen Scarf",
      image: "https://i.pinimg.com/736x/9d/7b/f4/9d7bf4fb7ddfa285ff36fbb7630f4b05.jpg",
      description: "Soft and warm woolen scarf, perfect for chilly winter days. Made from 80% wool and 20% nylon. Similar styles: Cashmere scarves, knitted shawls.",
      price: 999,
    ),
    Product(
      id: 6,
      name: "Leather Backpack",
      image: "https://i.pinimg.com/736x/9d/7b/f4/9d7bf4fb7ddfa285ff36fbb7630f4b05.jpg",
      description: "Premium quality leather backpack, spacious and stylish. Made from 100% genuine leather with reinforced stitching. Similar styles: Tote bags, messenger bags.",
      price: 5999,
    ),
    Product(
      id: 7,
      name: "Sporty Watch",
      image: "https://i.pinimg.com/736x/9d/7b/f4/9d7bf4fb7ddfa285ff36fbb7630f4b05.jpg",
      description: "Water-resistant sporty watch with multiple functions. Features durable silicone strap and a large digital display. Similar styles: Fitness trackers, smartwatch.",
      price: 2999,
    ),
    Product(
      id: 8,
      name: "Canvas Tote Bag",
      image: "https://i.pinimg.com/736x/9d/7b/f4/9d7bf4fb7ddfa285ff36fbb7630f4b05.jpg",
      description: "Spacious and durable canvas tote bag. Perfect for everyday use or shopping. Made from 100% cotton canvas. Similar styles: Jute bags, reusable shopping bags.",
      price: 899,
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.white, size: 24),
        ),
        title: const Text(
          "211068",
          style: TextStyle(color: Colors.black, fontSize: 38, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings, color: Colors.white, size: 24),
          ),
        ],
      ),
      body: ProductGrid(product: product),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Share',
        child: const Icon(Icons.share_rounded),
      ),
    );
  }
}
