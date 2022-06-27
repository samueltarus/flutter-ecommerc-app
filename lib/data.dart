// TODO: Come up with your own categories
import 'package:e_commerce_app/model/category.dart';
import 'package:e_commerce_app/model/product.dart';
import 'package:flutter/material.dart';

Category mensCategory = Category(title: "Men", selections: [
  "Shirts",
  "Jeans",
  "Shorts",
]);
Category womensCategory = Category(title: "Women", selections: [
  "Shirts",
  "Jeans",
]);
Category petsCategory = Category(title: "Pets", selections: [
  "Toys",
  "Treats",
]);

final kGreyBackground = Colors.grey[200];

// TODO: Fetch products and feed into widgets
List<Product> products = [
  Product(
      name: "2-Pack Crewneck T-Shirts - Black",
      imageUrls: [
        "https://images-na.ssl-images-amazon.com/images/I/91ieWhKe9AL._AC_UX569_.jpg",
        "https://images-na.ssl-images-amazon.com/images/I/71UqhKT2MDL._AC_UX466_.jpg",
        "https://images-na.ssl-images-amazon.com/images/I/81K7OAepB9L._AC_UX466_.jpg",
        "https://images-na.ssl-images-amazon.com/images/I/812T%2Bu00R4L._AC_UX466_.jpg"
      ],
      cost: 12.99,
      category: mensCategory,
      productType: "shirts",
      sizes: ["S", "M", "L", "XL"]),
  Product(
    name: "Short Sleeve Henley - Blue",
    imageUrls: [
      "https://images-na.ssl-images-amazon.com/images/I/81tpGc13OgL._AC_UX522_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/81oNSlos2tL._AC_UY679_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/819ea2vQIjL._AC_UY679_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/91SH0RB-8dL._AC_UY606_.jpg"
    ],
    cost: 17.99,
    category: mensCategory,
    productType: "shirts",
    sizes: ["XS", "S", "M", "L", "XL"],
  ),
  Product(
    name: "Polo RL V-Neck",
    imageUrls: [
      "https://images-na.ssl-images-amazon.com/images/I/61m68nuygSL._AC_UX522_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/61URnzIoCPL._AC_UX522_.jpg",
    ],
    cost: 24.99,
    category: mensCategory,
    productType: "shirts",
    sizes: ["XS", "S", "M", "L", "XL"],
  ),
  Product(
    name: "Athletic-Fit Stretch Jeans",
    imageUrls: [
      "https://images-na.ssl-images-amazon.com/images/I/91SIuLNN%2BlL._AC_UY679_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/91Qpp%2BRPLtL._AC_UX522_.jpg",
    ],
    cost: 29.99,
    category: mensCategory,
    productType: "jeans",
    sizes: ["XS", "S", "M", "L", "XL"],
  ),
  Product(
    name: "Levi's Original Jeans",
    imageUrls: [
      "https://images-na.ssl-images-amazon.com/images/I/91L4zjZKF-L._AC_UX522_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/91Mf37jbSvL._AC_UX522_.jpg",
    ],
    cost: 39.99,
    category: mensCategory,
    productType: "jeans",
    sizes: ["XS", "S", "M", "L", "XL"],
  ),
  Product(
    name: "2-Pack Performance Shorts",
    imageUrls: [
      "https://images-na.ssl-images-amazon.com/images/I/A1lTY32j6gL._AC_UX679_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/71JYOHJ%2BS-L._AC_UX522_.jpg",
    ],
    cost: 19.99,
    category: mensCategory,
    productType: "shorts",
    sizes: ["XS", "S", "M", "L", "XL"],
  ),
  Product(
    name: "Levi's Cargo Shorts",
    imageUrls: [
      "https://images-na.ssl-images-amazon.com/images/I/915Io2JEUPL._AC_UX679_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/91WJgn0FNkL._AC_UX679_.jpg",
    ],
    cost: 29.99,
    category: mensCategory,
    productType: "shorts",
    sizes: ["XS", "S", "M", "L", "XL"],
  ),
  Product(
    name: "2-Pack Short-Sleeve Crewneck",
    imageUrls: [
      "https://images-na.ssl-images-amazon.com/images/I/911mb8PkHSL._AC_UX522_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/81LDpImWPAL._AC_UX522_.jpg",
    ],
    cost: 16.99,
    category: womensCategory,
    productType: "shirts",
    sizes: ["XS", "S", "M", "L", "XL"],
  ),
  Product(
    name: "Waffle Knit Tunic Blouse",
    imageUrls: [
      "https://images-na.ssl-images-amazon.com/images/I/71lDML8KDQL._AC_UX522_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/61Ojm-DnojL._AC_UY679_.jpg",
    ],
    cost: 22.99,
    category: womensCategory,
    productType: "shirts",
    sizes: ["XS", "S", "M", "L", "XL"],
  ),
  Product(
    name: "Mid-Rise Skinny Jeans",
    imageUrls: [
      //TODO links not working returning null
      "https://images-na.ssl-images-amazon.com/images/I/71canaWSlAL._AC_UX522_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/71zLzCwbXUL._AC_UX522_.jpg",
    ],
    cost: 28.99,
    category: womensCategory,
    productType: "jeans",
    sizes: ["XS", "S", "M", "L", "XL"],
  ),
  Product(
    name: "Levi's Straight 505 Jeans",
    imageUrls: [
      "https://images-na.ssl-images-amazon.com/images/I/51D4eXuwKaL._AC_UX679_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/51sHwN6mDzL._AC_UX679_.jpg",
    ],
    cost: 34.99,
    category: womensCategory,
    productType: "jeans",
    sizes: ["XS", "S", "M", "L", "XL"],
  ),
  Product(
    name: "Levi's 715 Bootcut Jeans",
    imageUrls: [
      "https://images-na.ssl-images-amazon.com/images/I/81QwSgeXHTL._AC_UX522_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/81qmkt1Be0L._AC_UY679_.jpg",
    ],
    cost: 34.99,
    category: womensCategory,
    productType: "jeans",
    sizes: ["XS", "S", "M", "L", "XL"],
  ),
  Product(
    name: "3-Pack - Squeaky Plush Dog Toy",
    imageUrls: [
      "https://images-na.ssl-images-amazon.com/images/I/712YaF31-3L._AC_SL1000_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/71K1NzmHCfL._AC_SL1000_.jpg",
    ],
    cost: 9.99,
    category: petsCategory,
    productType: "toys",
  ),
  Product(
    name: "Wobble Wag Giggle Ball",
    imageUrls: [
      "https://images-na.ssl-images-amazon.com/images/I/81XyqDXVwCL._AC_SX355_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/81Ye9KrP3pL._AC_SY355_.jpg",
    ],
    cost: 11.99,
    category: petsCategory,
    productType: "toys",
  ),
  Product(
    name: "Duck Hide Twists",
    imageUrls: [
      "https://images-na.ssl-images-amazon.com/images/I/51dS9c0xIdL._SX342_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/81z4lvRtc5L._SL1500_.jpg",
    ],
    cost: 8.99,
    category: petsCategory,
    productType: "treats",
  ),
  Product(
    name: "Zuke's Mini Training Treats",
    imageUrls: [
      "https://images-na.ssl-images-amazon.com/images/I/81LV2CHtGKL._AC_SY355_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/81K30Bs9C6L._AC_SY355_.jpg",
    ],
    cost: 10.99,
    category: petsCategory,
    productType: "treats",
  ),
];