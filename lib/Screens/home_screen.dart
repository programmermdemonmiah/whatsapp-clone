import 'package:chat_app/Screens/TabPages/calls.dart';
import 'package:chat_app/Screens/TabPages/chats.dart';
import 'package:chat_app/Screens/TabPages/community.dart';
import 'package:chat_app/Screens/TabPages/status.dart';
import 'package:chat_app/Screens/Utils/colors.dart';
import 'package:chat_app/Screens/Utils/text.dart';
import 'package:chat_app/Screens/contact_screen.dart';
import 'package:chat_app/Screens/searchScreen.dart';
import 'package:chat_app/Screens/settings_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? tabController;
  IconData favIcon = Icons.message;

  List<PopupMenuEntry<int>> popUpItem = [
    const PopupMenuItem(
      value: 1,
      child: Text(
        'New Group',
        style: TextStyle(color: Colors.white),
      ),
    ),
    const PopupMenuItem(
      value: 2,
      child: Text(
        'New broadcast',
        style: TextStyle(color: Colors.white),
      ),
    ),
    const PopupMenuItem(
      value: 3,
      child: Text(
        'Settings',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(initialIndex: 1, length: 4, vsync: this)
      ..addListener(() {
        setState(() {
          switch (tabController!.index) {
            case 0:
              popUpItem = const [
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    'Create community',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child:
                      Text('Settings', style: TextStyle(color: Colors.white)),
                )
              ];
              break;
            case 1:
              favIcon = Icons.message;
              popUpItem = [
                const PopupMenuItem(
                  value: 1,
                  child: Text(
                    'New Group',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text(
                    'New broadcast',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text(
                    'Settings',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ];
              break;
            case 2:
              favIcon = Icons.camera_alt_outlined;
              popUpItem = const [
                PopupMenuItem(
                  value: 1,
                  child:
                      Text('Settings', style: TextStyle(color: Colors.white)),
                )
              ];
              break;
            case 3:
              favIcon = Icons.phone_in_talk_rounded;
              popUpItem = const [
                PopupMenuItem(
                  value: 1,
                  child: Text('Clear call logs',
                      style: TextStyle(color: Colors.white)),
                ),
                PopupMenuItem(
                    value: 2,
                    child: Text(
                      'Settings',
                      style: TextStyle(color: Colors.white),
                    ))
              ];
              break;
          }
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: tabController!.index == 0
          ? const SizedBox()
          : tabController!.index == 1
              ? FloatingActionButton(
                  backgroundColor: const Color(0xff075e5e),
                  foregroundColor: Colors.black,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ContactScreen(),
                    ));
                  },
                  child: Icon(
                    favIcon,
                    color: Colors.white,
                  ),
                )
              : tabController!.index == 2
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 45,
                          width: 45,
                          child: FloatingActionButton(
                            backgroundColor: const Color(0xff075e5e),
                            foregroundColor: Colors.black,
                            onPressed: () {},
                            child: const Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        FloatingActionButton(
                          backgroundColor: const Color(0xff075e5e),
                          foregroundColor: Colors.black,
                          onPressed: () {},
                          child: Icon(
                            favIcon,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  : FloatingActionButton(
                      backgroundColor: const Color(0xff075e5e),
                      foregroundColor: Colors.black,
                      onPressed: () {},
                      child: Icon(
                        favIcon,
                        color: Colors.white,
                      ),
                    ),
      backgroundColor: background,
      body: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: NestedScrollView(
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                title: const Text(appBarTittle),
                backgroundColor: appBarBg,
                actions: [
                  tabController!.index == 0
                      ? const SizedBox()
                      : IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add_a_photo_outlined)),
                  tabController!.index == 0
                      ? const SizedBox()
                      : tabController!.index == 1
                          ? IconButton(
                              onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchScreen(context: context),));}, icon: const Icon(Icons.search))
                          : tabController!.index == 2
                              ? const SizedBox()
                              : IconButton(
                                  onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => SearchScreen(context: context),));},
                                  icon: const Icon(Icons.search)),
                  PopupMenuButton(
                      offset: const Offset(0, 48),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                      color: appBarBg,
                      onSelected: (value) {
                        switch (tabController!.index) {
                          case 0:
                            if (value == 1) {
                            } else if (value == 2) {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SettingsPage(),
                              ));
                            } else {
                              Navigator.of(context).pop();
                            }
                            break;
                          case 1:
                            if (value == 1) {
                            } else if (value == 2) {
                            } else if (value == 3) {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SettingsPage(),
                              ));
                            } else {
                              Navigator.of(context).pop();
                            }
                            break;
                          case 2:
                            if (value == 1) {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SettingsPage(),
                              ));
                            } else {
                              Navigator.of(context).pop();
                            }
                            break;
                          case 3:
                            if (value == 1) {
                            } else if (value == 2) {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SettingsPage(),
                              ));
                            } else {
                              Navigator.of(context).pop();
                            }
                            break;
                        }
                      },
                      itemBuilder: (context) => popUpItem),
                ],
                bottom: TabBar(
                    controller: tabController,
                    indicatorColor: primary,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.white.withOpacity(0.5),
                    labelColor: primary,
                    tabs: const [
                      Tab(
                        child: Icon(Icons.groups),
                      ),
                      Tab(
                        child: Text('Chats'),
                      ),
                      Tab(
                        child: Text('Status'),
                      ),
                      Tab(
                        child: Text('Calls'),
                      ),
                    ]),
              ),
            ];
          },
          body: TabBarView(
            controller: tabController,
            children: [
              const CommunityTab(),
              const ChatsTab(),
              StatusTab(),
              CallsTab(),
            ],
          ),
        ),
      ),
    );
  }
}
