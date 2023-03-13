import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_complete_guide/provider/product.dart';
import 'package:flutter_complete_guide/widgets/product_grid_view.dart';
import 'package:flutter_complete_guide/widgets/product_item.dart';

class ProductsOverView extends StatelessWidget {
  ProductsOverView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My shop"),
      ),
      body: ProductGridView(),
    );
  }
}
