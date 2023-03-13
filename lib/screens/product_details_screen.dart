import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_complete_guide/provider/products.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatefulWidget {
  // final String id;
  // final String imageUrl;
  // final String title;

  static const routeName = '/product-detail';
  const ProductDetailScreen({
    Key key,
  }) //this.id, this.imageUrl, this.title})
  : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findbyiD(productId);
// adding listen== false ensures that if the listner is building the same provider class somewhere else it doesn't really have to rebuild this same widget
// again coz this is a static screen doens't really need toc hange acc tot the other chages in thse app
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
