import 'package:chat_app/Screens/Utils/colors.dart';
import 'package:chat_app/Screens/Utils/profile_info.dart';
import 'package:chat_app/Models/chats_user_data.dart';
import 'package:flutter/material.dart';

class StatusTab extends StatelessWidget {
   const StatusTab({super.key});


  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: const Text(
              'Status',
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: 18, color: Colors.white),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )),
          ),
          ListTile(
            leading:  Stack(
              alignment: Alignment.bottomRight,
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(profilePicture),
                  radius: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.5, color: Colors.white),
                    color: primary,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.add, color: Colors.white, size: 20,),
                ),
              ],
            ),

            title: const Text(
              'My status',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.white),
            ),
            subtitle: Text(
              'Tap to add status update',
              style: TextStyle(color: Colors.white.withOpacity(0.5)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Recent updates',
              style: TextStyle(color: Colors.white.withOpacity(0.5)),
            ),
          ),
          ListView.builder(
            itemCount: chatusers.length,
            shrinkWrap: true,
            primary: false,
            itemBuilder:(context, index) {
              final data = chatusers[index];
              return data.status == false ? SizedBox() : ListTile(
                title: Text(data.name.toString(),style: TextStyle(color: Colors.white),),
                subtitle: Text(data.time.toString(),style: TextStyle(color: Colors.white.withOpacity(0.5)),),
                leading: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.7),
                    color: primary,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(data.profilePicture.toString()),
                      radius: 25,
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
