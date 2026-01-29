import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  // final List<String> topic = ["Science", "Technology", "Engineering",];
  final List<String> topic = [
    "Science",
    "Technology",
    "Engineering",
    "Mathematics",
    "Arts",
    "History",
    "Literature",
    "Music",
    "Sports",
    "Health",
  ];
  final List<String> models = ["Model 1", "Model 2", "Model 3"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: false,
      child: Scaffold(
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
                    Expanded(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.line_axis),
                          ),
                          SizedBox(width: 8),
                          SizedBox(
                            width: 150,
                            child: DropdownButtonFormField<String>(
                              initialValue: models[0],
                              dropdownColor: Colors.white,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                              items: models.map((String model) {
                                return DropdownMenuItem<String>(
                                  value: model,
                                  child: Text(
                                    model,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                // Handle model change
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chat_bubble_outline),
                    ),
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
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
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
                          icon: Icon(Icons.send_outlined, color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add, color: Colors.white),
                          ),

                          // Expanded(
                          //   child: ListView.separated(
                          //     scrollDirection: Axis.horizontal,
                          //     // shrinkWrap: true,
                          //     separatorBuilder: (context, index) {
                          //       return SizedBox(width: 4);
                          //     },
                          //     itemCount: topic.length,
                          //     itemBuilder: (context, index) {
                          //       return Container(
                          //         margin: EdgeInsets.only(top: 15, bottom: 15),
                          //         padding: EdgeInsets.symmetric(
                          //           horizontal: 12,
                          //           vertical: 5,
                          //         ),
                          //         decoration: BoxDecoration(
                          //           color: Colors.grey[800],
                          //           borderRadius: BorderRadius.circular(20),
                          //           border: Border.all(color: Colors.white54),
                          //         ),
                          //         child: Center(
                          //           child: Row(
                          //             children: [
                          //               Icon(
                          //                 Icons.tag,
                          //                 color: Colors.white,
                          //                 size: 16,
                          //               ),
                          //               SizedBox(width: 5),
                          //               Text(
                          //                 topic[index],
                          //                 style: TextStyle(color: Colors.white),
                          //               ),
                          //             ],
                          //           ),
                          //         ),
                          //       );
                          //     },
                          //   ),
                          // ),
                          SizedBox(
                            // height: 80,
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: SingleChildScrollView(
                              child: Wrap(
                                spacing: 4.0,
                                runAlignment: WrapAlignment.start,
                                runSpacing: 4.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: topic.map((tag) {
                                  return Chip(
                                    backgroundColor: Colors.grey[800],
                                    label: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.tag,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          tag,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.voice_chat, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(height: 35),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
