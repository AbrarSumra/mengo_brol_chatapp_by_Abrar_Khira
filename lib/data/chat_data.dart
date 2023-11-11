import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatData extends StatelessWidget {
  const ChatData({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onLongPress: () {
            showDialog(
              context: context,
              barrierDismissible: true,
              builder: (ctx) {
                return Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 370,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Container(
                                  height: 3,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.grey.shade200,
                                ),
                                child: const Text(
                                  "Please help me find a good monitor for \nthe design",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "React",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "🔥",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "🤣",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "❤️‍",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "😎",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "😡",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "😭",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "🤗",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "😈",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    SizedBox(width: 10),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Row(
                                children: [
                                  Text(
                                    "Copy",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(Icons.copy, size: 20),
                                ],
                              ),
                              const Divider(),
                              const Row(
                                children: [
                                  Text(
                                    "Reply",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(CupertinoIcons.arrow_turn_up_left,
                                      size: 20),
                                ],
                              ),
                              const Divider(),
                              const Row(
                                children: [
                                  Text(
                                    "Forward",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(CupertinoIcons.arrow_turn_up_right,
                                      size: 20),
                                ],
                              ),
                              const Divider(),
                              const Row(
                                children: [
                                  Text(
                                    "Delete",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(Icons.delete, size: 20),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Container(
            height: 35,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade200,
            ),
            child: const Center(
              child: Row(
                children: [
                  Icon(
                    Icons.done_all,
                    size: 18,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Hi, Asal",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
