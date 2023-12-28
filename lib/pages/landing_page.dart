import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/calls_page.dart';
import 'package:whatsapp_clone/pages/chats_page.dart';
import 'package:whatsapp_clone/pages/community_page.dart';
import 'package:whatsapp_clone/pages/updates_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<LandingPage> {
  int initialTabControllerIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: initialTabControllerIndex,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text(
            "WhatsApp",
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: Theme.of(context).colorScheme.onPrimary),
          ),
          bottom: TabBar(indicatorColor: Colors.white, tabs: [
            Tab(
              icon: Icon(
                Icons.groups_3_rounded,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            Tab(
              child: Text(
                "Chats",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ),
            Tab(
              child: Text(
                "Updates",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ),
            Tab(
              child: Text(
                "Calls",
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onPrimary),
              ),
            )
          ]),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: Icon(
                Icons.camera_alt_outlined,
                size: 25,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: Icon(
                Icons.search,
                size: 25,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: Icon(
                Icons.more_vert,
                size: 25,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ],
        ),
        body: const TabBarView(children: [
          CommunityPage(),
          ChatsPage(),
          UpdatesPage(),
          CallsPage()
        ]),
        // floatingActionButton: FloatingActionButton(
        //     onPressed: null,
        //     backgroundColor: Theme.of(context).colorScheme.primary,
        //     child: const Icon(
        //       Icons.message,
        //       color: Colors.white,
        //     )),
      ),
    );
  }
}
