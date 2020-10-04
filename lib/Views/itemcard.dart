import 'package:flutter/material.dart';
import 'package:shopping_app/models/shopping.dart';
class Item extends StatelessWidget {
  final Product product;

  const Item({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(child: 
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Color(0XFFe3e3e3),
            borderRadius: BorderRadius.circular(14.0)
          ),
          child: Image.network(product.image),
        )
        ),
        Text(product.title,style: TextStyle(fontWeight: FontWeight.bold),),
        Text("Rs.${product.price}"),
        FlatButton(onPressed: (){},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.black)
            ),
            color: Colors.amber,
            child:
        Text("Buy"))
      ],
    );
  }
}
