import 'dart:async';

import 'package:flutter/material.dart';
import '../APIs/blog_api.dart';
import '../components/blog_card.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  late StreamController _streamController;
  late Stream _stream;

  @override
  void initState() {
    super.initState();
    _streamController = StreamController();
    _stream = _streamController.stream;
    getBlogs();
  }

  getBlogs() async {
    var response = await BlogApi().getBlogs();
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
          'Blogs',
          style: TextStyle(color: Colors.black),
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
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: ListView.builder(
                          itemCount: myData.length,
                          itemBuilder: (context, i) => Center(
                            child: BlogCard(
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