import 'package:flutter/material.dart';

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Center(
          child: Column(
        children: [
          //Status and status privacy row
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Status",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.black,
                    ))
              ],
            ),
          ),
          //Mystatus row
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 0, 10),
                child: GestureDetector(
                  onTap: () {},
                  child: Stack(
                    children: [
                      ClipOval(
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset("assets/person.jpg"),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: const Icon(
                            size: 25,
                            Icons.add_circle_rounded,
                            color: Colors.teal,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "My Status",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Tap to add status update",
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              )
            ],
          ),
          //Divider
          const Divider(
            height: 10,
            thickness: 0.5,
          ),
          //Find channels row
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Channels",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.add,
                    weight: 40.0,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
//Blah blah blah about finding channels
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
            child: Text(
              "Stay updated on topics that matter to you. Find channels to follow below.",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 10, 0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 140,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 1, 0),
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Stack(
                              children: [
                                ClipOval(
                                  child: SizedBox(
                                      height: 60,
                                      width: 60,
                                      child: Image.asset("assets/person.jpg")),
                                ),
                                Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: const Icon(
                                        Icons.verified,
                                        color: Colors.green,
                                      ),
                                    ))
                              ],
                            ),
                            const Text(
                              "Kevin Pietersen",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            OutlinedButton(
                                onPressed: () {}, child: const Text("Follow"))
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.teal),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Explore more",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 220,
          )
        ],
      )),

      //Floating action buttons section in the stack
      Positioned(
          bottom: 100,
          right: 27,
          child: SizedBox(
            height: 45,
            width: 45,
            child: FloatingActionButton(
              backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
              onPressed: null,
              child: Icon(
                Icons.edit,
                color: Theme.of(context).colorScheme.primary,
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
            Icons.camera_alt,
            color: Colors.white,
          ),
        ),
      )
    ]);
  }
}
