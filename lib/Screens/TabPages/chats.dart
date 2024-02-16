import 'package:chat_app/Screens/Utils/colors.dart';
import 'package:chat_app/Models/chats_user_data.dart';
import 'package:chat_app/Screens/chatScreen.dart';
import 'package:flutter/material.dart';

class ChatsTab extends StatelessWidget {
  const ChatsTab({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: chatusers.length,
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(12),
          itemBuilder: (context, index) {
            final data = chatusers[index];
            return ListTile(
              onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChatScreen(image: data.profilePicture.toString(), name: data.name.toString(),phoneNumber: data.number.toString()),));},
              title: Text(
                data.name.toString(),
                style: const TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                data.lastMessage.toString(),
                style: TextStyle(color: Colors.white.withOpacity(0.5)),
              ),
              leading: InkWell(
                onTap: (){},
                child: CircleAvatar(
                        backgroundImage: NetworkImage(data.profilePicture.toString()),
                        radius: 25,
                      ),
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    data.time.toString(),
                    style: TextStyle(
                        color: data.isRead
                            ? Colors.white.withOpacity(0.5)
                            : primary),
                  ),
                  data.isRead
                      ? const SizedBox()
                      : Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: primary),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              data.messageCount.toString(),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                ],
              ),
            );
          },
        ),
        // Positioned(
        //   bottom: 15,
        //   right: 15,
        //   child: FloatingActionButton(
        //     backgroundColor: const Color(0xff075e5e),
        //     foregroundColor: Colors.black,
        //     onPressed: () {
        //       Navigator.of(context).push(
        //         MaterialPageRoute(builder: (context) {
        //           return const ContactScreen();
        //         }),
        //       );
        //     },
        //     child: const Icon(Icons.message),
        //   ),
        // ),

      ],
    );
  }
}
