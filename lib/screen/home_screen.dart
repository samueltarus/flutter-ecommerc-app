import 'package:e_commerce_app/data.dart';
import 'package:e_commerce_app/model/product.dart';
import 'package:e_commerce_app/screen/cart_app_bar.dart';
import 'package:e_commerce_app/screen/category_tile.dart';
import 'package:e_commerce_app/screen/product_tile.dart';
import 'package:e_commerce_app/screen/search_bar.dart';
import 'package:flutter/material.dart';

const String manLookRightImageUrl =
    'https://flutter-ui.s3.us-east-2.amazonaws.com/ecommerce/man-look-right.jpg';
const String dogImageUrl =
    'https://flutter-ui.s3.us-east-2.amazonaws.com/ecommerce/pet.jpg';
const String womanLookLeftImageUrl =
    'https://flutter-ui.s3.us-east-2.amazonaws.com/ecommerce/woman-look-left.jpg';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String searchString;
  @override
  void initState() {
    searchString = '';
    super.initState();
  }

  void setSearchString(String value) => setState(() {
        searchString = value;
      });

  @override
  Widget build(BuildContext context) {
    var listViewPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 24);
    List<Widget> searchResultTiles = [];
    Product product;
    if (searchString.isNotEmpty) {
      searchResultTiles = products
          .where(
              (p) => p.name.toLowerCase().contains(searchString.toLowerCase()))
          .map(
            (p) => ProductTile(product: p),
          )
          .toList();
    }
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(
          onChanged: setSearchString,
        ),
        actions: const [
          CartAppBarAction(),
        ],
      ),
      body: searchString.isNotEmpty
          ? GridView.count(
              padding: listViewPadding,
              crossAxisCount: 2,
              mainAxisSpacing: 24,
              crossAxisSpacing: 24,
              childAspectRatio: .78,
              children: searchResultTiles,
            )
          : ListView(
              padding: listViewPadding,
              children: [
                Text(
                  "Shop by Category",
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(height: 16),
                CategoryTile(
                  imageUrl: manLookRightImageUrl,
                  category: mensCategory,
                  imageAlignment: Alignment.topCenter,
                ),
                const SizedBox(height: 16),
                CategoryTile(
                  imageUrl: womanLookLeftImageUrl,
                  category: womensCategory,
                  imageAlignment: Alignment.topCenter,
                ),
                const SizedBox(height: 16),
                CategoryTile(
                  imageUrl: dogImageUrl, // TODO: Replace with your own image
                  category: petsCategory,
                ),
              ],
            ),
    );
  }
}
