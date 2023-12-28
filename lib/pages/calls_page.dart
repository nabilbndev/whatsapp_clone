import 'package:flutter/material.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(children: [
      Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Theme.of(context).colorScheme.primary),
                      child: const Icon(
                        Icons.link_outlined,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Create call link",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Share a link for your WhatsApp call",
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      Positioned(
        top: 350,
        right: 70,
        child: RichText(
          text: const TextSpan(
            text: 'To start calling contacts who have\n',
            style: TextStyle(fontSize: 18, color: Colors.grey),
            children: [
              TextSpan(
                text: 'WhatsApp, tap ',
              ),
              WidgetSpan(
                  child: Icon(
                Icons.phone_sharp,
                color: Colors.grey,
              )),
              TextSpan(
                text: ' at the bottom of\n',
              ),
              TextSpan(
                text: 'your screen',
              ),
            ],
          ),
          textAlign: TextAlign.center, // Adjust alignment as needed
        ),
      ),
      Positioned(
        bottom: 20,
        right: 20,
        child: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.primary,
          onPressed: null,
          child: const Icon(
            Icons.phone_sharp,
            color: Colors.white,
          ),
        ),
      )
    ]));
  }
}
