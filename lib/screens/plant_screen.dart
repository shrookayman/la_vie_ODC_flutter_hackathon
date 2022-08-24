import 'dart:async';

import 'package:flutter/material.dart';

import '../APIs/forum_api.dart';
import '../components/forum_card.dart';
import '../components/search_field.dart';

class PlantScreen extends StatefulWidget {
  const PlantScreen({Key? key}) : super(key: key);

  @override
  State<PlantScreen> createState() => _PlantScreenState();
}

class _PlantScreenState extends State<PlantScreen> {
  late StreamController _streamController;
  late Stream _stream;

  @override
  void initState() {
    super.initState();
    _streamController = StreamController();
    _stream = _streamController.stream;
    getForums();
  }

  getForums() async {
    var response = await ForumApi().getForums();
    _streamController.add(response);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Discussion Forums',
          style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: StreamBuilder(
            stream: _stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var myData = [];
                myData = snapshot.data as List<dynamic>;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SearchField(),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                      child:
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all( 8),
                            child: Container(
                              width: 120, height: 35,
                              decoration: BoxDecoration(
                                color: Color(0xff1ABC00),
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(
                                    color: Color(0xff1ABC00), width: 2),
                              ),
                              child: Padding(
                                padding:  EdgeInsets.all(6.0),
                                child: Text(
                                  'All forums',
                                    textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 120, height: 35,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                  color: Colors.grey.shade300, width: 2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                'My forums',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff979797)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: ListView.builder(
                          itemCount: myData.length,
                          itemBuilder: (context, i) => Center(
                            child: ForumCard(
                              i,
                              myData[i],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }
              return const CircularProgressIndicator();
            }),
      ),
    );
  }
}