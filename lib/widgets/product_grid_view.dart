import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_complete_guide/provider/product.dart';
import 'package:flutter_complete_guide/widgets/product_item.dart';
import 'package:provider/provider.dart';
import '../provider/products.dart';

class ProductGridView extends StatelessWidget {
  ProductGridView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var loadedProduct;
    final productsData = Provider.of<Products>(
        context); //  using provider package importing the obke=jetx of the products from the provider folder

    final products = productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: products.length,
      itemBuilder: (context, i) => ChangeNotifierProvider(
        create: (context) => products[i],
        // child: ProductItem(
        //     // imageUrl: products[i].imageUrl,
        //     // id: products[i].id,
        //     // title: products[i].title,
        //     ),
        child: ProductItem(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
