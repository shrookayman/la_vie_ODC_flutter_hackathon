import 'package:flutter/material.dart';

import '../models/products.dart';

class ProductCard extends StatefulWidget {
  late final int index;
  late Products _products;
  late final dynamic data;

  ProductCard( this.index, this.data){
    _products = Products(data['name'],'https://lavie.orangedigitalcenteregypt.com'+ data['imageUrl'],data['price']);
  }


  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.23,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              offset: Offset(1,2),
              blurRadius: 1,
            )
          ],
        ),
        child:
               Padding(
                 padding: const EdgeInsets.only(top: 1.0),
                 child: Container(
                   //width: 150,height: 300,
                   child: Column(
                     children: [
                       Padding(
                         padding:EdgeInsets.only(top: 3),
                         child: Image(image: NetworkImage(widget._products.imageUrl),width: 70,height:100 ,),
                       ),

                         Text(
                           widget._products.name,
                           style: TextStyle(fontWeight: FontWeight.bold,fontSize:13),
                         ),
                         Text(
                         '${widget._products.price.toString()} EGP',
                         style: TextStyle(fontWeight: FontWeight.bold,fontSize:7,),
                       ),
                         Padding(
                           padding: const EdgeInsets.only(bottom: 1.0),
                           child: Container(
                             height: 25, width: 100,
                             decoration: BoxDecoration(
                               color: Color(0xff1ABC00),
                               borderRadius: BorderRadius.circular(9),
                             ),
                             child: TextButton(
                               onPressed: (){
                                 // setState(() {
                                 //   Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart(widget.index,widget.data))
                                 //
                                 //   );
                                 // });
                               },
                               child: Text('add to cart',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 10,
                                 fontWeight: FontWeight.bold
                               ),
                               ),
                             ),
                           ),
                         )
                     ],

                   ),
                 ),
               )


      ),
    );
  }
}
