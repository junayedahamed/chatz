import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<String> topic = ["Science", "Technology", "Engineering"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // alignment: AlignmentGeometry.center,
        alignment: AlignmentGeometry.center,
        children: [
          Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.line_axis)),
                  // Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                ],
              ),
            ],
          ),
          // Spacer(),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              height: 150,
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Type a message',
                            hintStyle: TextStyle(color: Colors.white54),
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.mic, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.add)),

                        Expanded(
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            // shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 4);
                            },
                            itemCount: topic.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(top: 15, bottom: 15),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.white54),
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.tag,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        topic[index],
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.send, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
