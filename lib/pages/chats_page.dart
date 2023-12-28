import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Center(
          child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: ClipOval(
              child: Container(
                  decoration: const BoxDecoration(),
                  child: Image.asset("assets/person.jpg")),
            ),
            title: const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
              child: Text(
                "John Doe",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            subtitle: const Text("Hey! how are you doing"),
            trailing: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
                child: Text("9:58 PM")),
          ),
        ),
      )),
      Positioned(
        bottom: 20,
        right: 20,
        child: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.primary,
          onPressed: null,
          child: const Icon(
            Icons.message,
            color: Colors.white,
          ),
        ),
      )
    ]);
  }
}
