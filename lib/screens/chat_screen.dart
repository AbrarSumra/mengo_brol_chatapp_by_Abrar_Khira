import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wscube_mengo_brol_chatapp/data/chat_data.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen(this.name, this.image, {super.key});
  final String name;
  final String image;

  void _showBottomSheet(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.back),
        ),
        title: Row(
          children: [
            CircleAvatar(
              maxRadius: 20,
              backgroundImage: AssetImage(image),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                const Text(
                  "online",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: const [
          Icon(
            CupertinoIcons.video_camera,
            size: 30,
          ),
          SizedBox(width: 20),
          Icon(
            CupertinoIcons.phone,
            size: 20,
          ),
          SizedBox(width: 20)
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 25),
              Center(
                child: Text(
                  "Today",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              SizedBox(height: 20),
              ChatData()
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.add,
                color: Colors.black,
                size: 30,
              ),
              SizedBox(
                height: 45,
                width: 270,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide.none,
                    ),
                    label: const Text(
                      "New Chat",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.mic_outlined,
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
