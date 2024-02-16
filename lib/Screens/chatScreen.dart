import 'package:chat_app/Screens/Utils/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String name;
  final String image;
  final String phoneNumber;

  const ChatScreen(
      {super.key,
      required this.name,
      required this.image,
      required this.phoneNumber});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Map> communicationList = [
    {
      'incommingMessage': true,
      'Communications': 'How are you? ',
      'Messagetime': '11.20am',
      'type': 'text',
    },
    {
      'incommingMessage': true,
      'Communications': 'How are you? ',
      'Messagetime': '11.22am',
      'type': 'text',
    },
    {
      'outgoingMassege': true,
      'Communications': 'I am fine and you ',
      'Messagetime': '11.25am',
      'type': 'text',
    },
    {
      'incommingMessage': true,
      'Communications': 'How are you? ',
      'Messagetime': '12.20am',
      'type': 'text',
    },
    {
      'incommingMessage': true,
      'Communications': 'How are you? ',
      'Messagetime': '12.25pm',
      'type': 'text',
    },
    {
      'outgoingMassege': true,
      'Communications': 'I am fine and you ',
      'Messagetime': '12.30pm',
      'type': 'text',
    },
    {
      'outgoingMassege': true,
      'Communications': 'I am fine and you ',
      'Messagetime': '11.25am',
      'type': 'text',
    },
    {
      'outgoingMassege': true,
      'Communications': 'I am fine and you ',
      'Messagetime': '11.25am',
      'type': 'text',
    },
    {
      'incommingMessage': true,
      'Communications': 'How are you? ',
      'Messagetime': '12.20am',
      'type': 'text',
    },
    {
      'incommingMessage': true,
      'Communications': 'How are you? ',
      'Messagetime': '12.25pm',
      'type': 'text',
    },
    {
      'outgoingMassege': true,
      'Communications': 'I am fine and you ',
      'Messagetime': '12.30pm',
      'type': 'text',
    },
    {
      'incommingMessage': true,
      'Communications': 'How are you? ',
      'Messagetime': '12.20am',
      'type': 'text',
    },
    {
      'incommingMessage': true,
      'Communications': 'How are you? ',
      'Messagetime': '12.25pm',
      'type': 'text',
    },
    {
      'outgoingMassege': true,
      'Communications': 'I am fine and you ',
      'Messagetime': '12.30pm',
      'type': 'text',
    },{
      'incommingMessage': true,
      'Communications': 'How are you? ',
      'Messagetime': '12.20am',
      'type': 'text',
    },
    {
      'incommingMessage': true,
      'Communications': 'How are you? ',
      'Messagetime': '12.25pm',
      'type': 'text',
    },
    {
      'outgoingMassege': true,
      'Communications': 'I am fine and you ',
      'Messagetime': '12.30pm',
      'type': 'text',
    },{
      'incommingMessage': true,
      'Communications': 'How are you? ',
      'Messagetime': '12.20am',
      'type': 'text',
    },
    {
      'incommingMessage': true,
      'Communications': 'How are you? ',
      'Messagetime': '12.25pm',
      'type': 'text',
    },
    {
      'outgoingMassege': true,
      'Communications': 'I am fine and you ',
      'Messagetime': '12.30pm',
      'type': 'text',
    },{
      'incommingMessage': true,
      'Communications': 'How are you? ',
      'Messagetime': '12.20am',
      'type': 'text',
    },
    {
      'incommingMessage': true,
      'Communications': 'How are you? ',
      'Messagetime': '12.25pm',
      'type': 'text',
    },
    {
      'outgoingMassege': true,
      'Communications': 'I am fine and you ',
      'Messagetime': '12.30pm',
      'type': 'text',
    },
  ];
  String message = '';
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              const Positioned(
                left: 1,
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                ),
              ),
              Positioned(
                right: 0,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(widget.image.toString()),
                  radius: 20,
                ),
              )
            ],
          ),
        ),
        automaticallyImplyLeading: false,
        title: ListTile(
          title: Text(
            widget.name.toString(),
            style: const TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            widget.phoneNumber.toString(),
            style: TextStyle(color: Colors.white.withOpacity(0.5)),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.video_call,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call,
                color: Colors.white,
              )),
          PopupMenuButton(
            onSelected: (value) {
              // ignore: unnecessary_null_comparison
              if (value == null) {
                Navigator.of(context).pop();
              } else if (value == 1) {
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ,));
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 1,
                child: Text('Search'),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://w0.peakpx.com/wallpaper/818/148/HD-wallpaper-whatsapp-background-cool-dark-green-new-theme-whatsapp-thumbnail.jpg'),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                itemCount: communicationList.length,
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.all(8.0),
                itemBuilder: (context, index) {
                  final data = communicationList[index];
                  return Column(
                    crossAxisAlignment: data['incommingMessage'] == true
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: data['incommingMessage'] == true
                                ? const BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                    topRight: Radius.circular(15))
                                : const BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15)),
                            color: data['incommingMessage'] == true
                                ? appBarBg
                                : primary,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 24, top: 4, bottom: 4),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      data['Communications'],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 6, bottom: 2),
                                child: Text(
                                  data['Messagetime'],
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: appBarBg,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.emoji_emotions, color: Colors.white.withOpacity(0.5),)),
                          Expanded(
                            child: TextField(
                              maxLines: 5,
                              minLines: 1,
                              textAlign: TextAlign.left,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Messages',
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.5)),
                              ),
                              onChanged: (value) {
                               setState(() {
                                 message = value;
                               });
                              },
                            ),
                          ),
                          IconButton(
                              onPressed: () {}, icon:  Icon(Icons.link, color: Colors.white.withOpacity(0.5),)),
                          message.isEmpty ? IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.camera_alt, color: Colors.white.withOpacity(0.5))): const SizedBox(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  message.isEmpty
                      ? Container(
                          decoration: const BoxDecoration(
                              color: primary, shape: BoxShape.circle),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.mic,
                                color: Colors.white,
                              )))
                      : Container(
                          decoration: const BoxDecoration(
                              color: primary, shape: BoxShape.circle),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.send,
                                color: Colors.white,
                              ))),
                ],
              ),
            ),
            const SizedBox(
              height: 3,
            )
          ],
        ),
      ),
    );
  }
}
