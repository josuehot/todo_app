import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final states = [
    {'title': 'All', 'count': '12'},
    {'title': 'Completed', 'count': '12'},
    {'title': 'Uncompleted', 'count': '12'},
    {'title': 'Favorite', 'count': '12'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Todo App', style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Color.fromRGBO(243, 243, 243, 1),
                  width: 1,
                ),
                bottom: BorderSide(
                  color: Color.fromRGBO(243, 243, 243, 1),
                  width: 1,
                ),
              ),
            ),
            child: SizedBox(
                height: 40,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: states.length,
                    itemBuilder: (context, index) => Container(
                          height: 100,
                          width: 130,
                          margin: const EdgeInsets.all(10),
                          child: Center(
                              child: Text('${states[index]['title']}',
                                  style: GoogleFonts.inter())),
                        ))),
          )
        ],
      )),
    );
  }
}
