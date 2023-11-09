import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wscube_mengo_brol_chatapp/data/data.dart';
import 'package:wscube_mengo_brol_chatapp/modules/bottom_sheet.dart';
import 'package:wscube_mengo_brol_chatapp/screens/chat_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDialogOpen = false;

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return Material(
          color: Colors.transparent,
          child: const CustomBottomSheet(),
        );
      },
    );
    setState(() {
      isDialogOpen = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Mengobrol",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  height: 80,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Center(
                              child: Icon(Icons.add),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Add story",
                          )
                        ],
                      ),
                      Row(
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: data.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                children: [
                                  const SizedBox(width: 10),
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        maxRadius: 25,
                                        backgroundImage:
                                            AssetImage(data[index]["dp"]),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        data[index]["name"],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  const Text(
                    "Chats",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                    ),
                  )
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: data.length,
                itemBuilder: (BuildContext context, index) {
                  String name = data[index]["name"];
                  String image = data[index]["dp"];
                  return ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => ChatScreen(name, image)));
                    },
                    leading: CircleAvatar(
                      maxRadius: 25,
                      backgroundImage: AssetImage(data[index]["dp"]),
                    ),
                    title: Text(
                      data[index]["name"],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(data[index]["subTitle"]),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          data[index]["time"],
                          style: const TextStyle(fontSize: 12),
                        ),
                        const SizedBox(height: 5),
                        data[index]["unReadMsg"] == 0
                            ? Container(width: 0)
                            : Container(
                                width: 25,
                                height: 25,
                                decoration: const BoxDecoration(
                                  color: Colors.yellow,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(
                                    data[index]["unReadMsg"].toString(),
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                ),
                              )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.home_outlined,
                color: Colors.black,
                size: 30,
              ),
              SizedBox(
                width: 150,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      _showAlertDialog(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          "New Chat",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person_outline,
                  color: Colors.black,
                  size: 30,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
