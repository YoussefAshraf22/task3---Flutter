import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Task 3',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 62, 133, 65),
            height: 110,
            padding: EdgeInsetsDirectional.only(top: 15),
            child: const Column(children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "WhatsApp",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 180),
                  Icon(Icons.search, color: Colors.white),
                  SizedBox(width: 20),
                  Icon(Icons.more_vert, color: Colors.white),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.camera_alt,
                    color: Colors.grey,
                    size: 25,
                  ),
                  SizedBox(
                    width: 30,
                  ),

                  Text(
                    "CHATS",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  //  SizedBox(height: 5,),

                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "STATUS",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  //  SizedBox(height: 5,),

                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    "CALLS",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              )
            ]),
          ),
          const User(),
          const Line(),
          const User(),
          const Line(),
          const User(),
          const Line(),
          const User(),
          const Line(),
          const User(),
          const SizedBox(height: 20),
          const Text(
            "Tap and hold on chat for more options",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.message_rounded),
      ),
    );
  }
}

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(start: 10, top: 20),
      child: const Row(children: [
        Icon(
          Icons.account_circle,
          color: Colors.grey,
          size: 55,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "User",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 180,
                ),
                Text(
                  "7:22 PM",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            // SizedBox(height: 15,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_right_outlined,
                  color: Colors.blue,
                ),
                Text(
                  "Hello",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        )
      ]),
    );
  }
}

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.grey,
      height: 15,
      thickness: 0.3,
      indent: 65,
      endIndent: 20,
    );
  }
}
