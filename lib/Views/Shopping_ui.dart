import 'package:flutter/material.dart';
import 'package:shopping_app/Views/itemcard.dart';
import 'package:shopping_app/models/shopping.dart';
class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(icon: Icon(Icons.shopping_cart,color: Colors.black,), onPressed: null)
          ],
          backgroundColor: Colors.white,
          title: Text("Shop Here",style: TextStyle(color: Colors.black54),),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 20.0,),
            Expanded(
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: .85
              ),
                  itemCount: products.length,
                  itemBuilder: (context,index){
                return Item(product: products[index],);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
