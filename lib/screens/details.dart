import 'package:flutter/material.dart';
import 'package:online_shopping_app_flutter/models/product_model.dart';
import 'package:online_shopping_app_flutter/widgets/detail_back_button.dart';
import 'package:online_shopping_app_flutter/widgets/detail_data.dart';
import 'package:online_shopping_app_flutter/widgets/detail_image.dart';
import 'package:online_shopping_app_flutter/widgets/detail_title.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            DetailImage(image: arguments.image),
            DetailTitle(id: arguments.id, name: arguments.name),
            DetailData(description: arguments.description, price: arguments.price),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: const DetailBackButton(),
    );
  }
}
