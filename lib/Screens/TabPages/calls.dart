import 'package:chat_app/Screens/Utils/colors.dart';
import 'package:chat_app/Models/chats_user_data.dart';
import 'package:flutter/material.dart';

class CallsTab extends StatelessWidget {
  const CallsTab({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {},
              child: ListTile(
                leading:  Container(
                  height: 40,
                  width:40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: primary,
                  ),
                  child: Icon(
                    Icons.link, color: Colors.black,
                  ),
                ),
                title: const Text(
                  'Create call link',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text('Share a link for your call',
                    style: TextStyle(color: Colors.white.withOpacity(0.5))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Recent ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 10,
            shrinkWrap: true,
            primary: false,
            // padding: const EdgeInsets.all(12),
            itemBuilder: (context, index) {
              final data = chatusers[index];
              return InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    data.name.toString(),
                    style: TextStyle(color: data.incommingCall == true? Colors.red : Colors.white),
                  ),
                  subtitle: Row(
                    children: [
                      data.incommingCall == true
                          ? const Icon(
                              Icons.call_received,
                              color: Colors.red,
                            )
                          : const Icon(
                              Icons.call_made,
                              color: primary,
                            ),
                      Text(data.time.toString(),
                          style: TextStyle(color: Colors.white.withOpacity(0.5))),
                    ],
                  ),
                  leading: InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        data.profilePicture.toString(),
                      ),
                      radius: 25,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.call,
                      color: primary,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
