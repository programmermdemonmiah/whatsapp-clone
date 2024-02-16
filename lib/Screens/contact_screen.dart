import 'package:chat_app/Screens/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: ListTile(
          title: const Text(
            'Select contact',
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            'all contacts',
            style: TextStyle(color: Colors.white.withOpacity(0.5)),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  leading: Container(
                    height: 45,
                      width: 45,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xff075e5e)),
                      child: const Icon(
                        Icons.group_sharp,
                        color: Colors.white,
                        size: 30,
                      )),
                  title: const Text(
                    'New group',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  leading: Container(
                    alignment: Alignment.center,
                      height: 45,
                      width: 45,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xff075e5e)),
                      child: const FaIcon(FontAwesomeIcons.userPlus, color: Colors.white,),
                  ),
                  title: const Text(
                    'New contact',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                  trailing: InkWell(
                    onTap: (){},
                    child: const Icon(Icons.qr_code, color: Colors.white,),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text('Contacts on WhatsApp', style: TextStyle(color: Colors.white.withOpacity(0.6)),),
            ),
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: 30,
              // padding: const EdgeInsets.all(8),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Emon', style: TextStyle(color: Colors.white)),
                  subtitle: Text('01405665854',
                      style: TextStyle(color: Colors.white.withOpacity(0.5))),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/2182970/pexels-photo-2182970.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                    radius: 25,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
