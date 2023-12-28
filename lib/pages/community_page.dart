import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Image.asset("assets/community.jpg"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
            text: TextSpan(
              text: 'Stay connected with a\n',
              style: Theme.of(context).textTheme.bodyLarge,
              children: const [
                TextSpan(
                  text: 'community',
                ),
              ],
            ),
            textAlign: TextAlign.center, // Adjust alignment as needed
          ),
        ),
        RichText(
          text: const TextSpan(
              text: "Communities bring members together in\n",
              style: TextStyle(color: Colors.black, fontSize: 15),
              children: [
                TextSpan(text: "topic-based groups, and make it easy to get\n"),
                TextSpan(text: "admin annoucements. Any community you're\n"),
                TextSpan(text: "added to will appear here.")
              ]),
          textAlign: TextAlign.center,
        ),
        TextButton(
            onPressed: () {}, child: const Text("See example communities >")),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 330,
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
              ),
              onPressed: () {},
              child: const Text(
                "Start your community",
                style: TextStyle(color: Colors.white),
              )),
        )
      ]),
    );
  }
}
