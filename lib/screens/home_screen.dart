import 'dart:async';
import 'package:flutter/material.dart';
import 'package:la_vie/APIs/product_api.dart';
import 'package:la_vie/components/search_options.dart';
import 'package:la_vie/components/product_card.dart';

import '../components/search_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ProductsApi productsApi ;
  late Stream _stream;
  late StreamController _streamController;

  @override

  void initState(){
    super.initState();
    _streamController = StreamController();
    _stream = _streamController.stream;
    productsApi =ProductsApi();
    getProducts();
  }
  getProducts() async{
    var response = await productsApi.getProducts();
    _streamController.add(response);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:
              Center(
                child: StreamBuilder(
                  stream:_stream,
                  builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                    if(snapshot.hasData){
                      var myData = [];
                      myData = snapshot.data as List<dynamic>;
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/images/logo.png',
                                width: 350,
                                height: 60,
                              ),
                            ],
                          ),
                             Row(
                               children: [
                                 Flexible(child: SearchField(),flex: 5,),

                                 Flexible(
                                     flex: 1,
                                     child: Container(
                                       width: 55,height: 55,
                                       decoration: BoxDecoration(
                                         color: Color(0xff1ABC00),
                                         borderRadius: BorderRadius.circular(10)
                                       ),
                                   child:  Icon(Icons.shopping_cart_outlined,color: Colors.white,)
                                   ,
                                 ))
                               ],
                             ),
                          
                          Row(
                            children: [
                              Flexible(child: SearchOptions('All',Color(0xff1ABC00)),),
                               Flexible(child: SearchOptions('Plants',Colors.grey.shade200),),
                              Flexible(child: SearchOptions('Seeds',Colors.grey.shade200),),
                              Flexible(child: SearchOptions('tools',Colors.grey.shade200),),



                            ],
                          ),
                          Expanded(child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GridView.builder(
                              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: MediaQuery.of(context).size.width * 0.5,
                                childAspectRatio: 1/1,
                              ),
                              // itemBuilder: (context,i)=>ProductCard(i,myData[i]),
                              itemCount: myData.length,
                              itemBuilder: (context, i)=>
                                  Center(child: ProductCard(i, myData[i])),
                            ),
                          ),),
                        ],
                      );


                    }

                      return CircularProgressIndicator();

                  },

                ),
              ),
    );
  }
}



