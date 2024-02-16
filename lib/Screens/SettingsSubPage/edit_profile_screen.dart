import 'dart:io';
import 'package:chat_app/Screens/Utils/colors.dart';
import 'package:chat_app/Screens/Utils/profile_info.dart';
import 'package:chat_app/Screens/widgets/customEditProfileItem.dart';
import 'package:chat_app/Screens/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final ImagePicker _imagePicker = ImagePicker();

  File? imageFile;

  void uploadImage(ImageSource source) async {
    final imagePicker = await _imagePicker.pickImage(source: source);
    setState(() {
      imageFile = File(imagePicker!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: customAppBar(tittle: 'Profile', context: context),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 12),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                imageFile == null
                    ? const CircleAvatar(
                        backgroundImage: NetworkImage(profilePicture),
                        radius: 70,
                      )
                    : CircleAvatar(
                        backgroundImage: FileImage(imageFile!), radius: 70,
                      ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))),
                      backgroundColor: background,
                      context: context,
                      builder: (context) {
                        return Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: appBarBg,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      //Camera pick picture
                                      uploadImage(ImageSource.camera);
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 2, color: primary),
                                      ),
                                      child: const Icon(
                                        Icons.camera_alt_outlined,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    'Camera',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.6),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      print('Gallery clicked');
                                      //Gallery pick picture
                                      uploadImage(ImageSource.gallery);
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 2, color: primary),
                                      ),
                                      child: const Icon(
                                        Icons.photo,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Gallery',
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.6),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                      color: primary,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            //==========================
            const SizedBox(height: 12),
            customEditProfileItem(
                label: 'Name',
                tittle: profileName,
                subTittle:
                    "This is not your username or pin. This name will be visible to your WhatsApp contacts.",
                leadingIcon: Icons.person,
                trailingIcon: Icons.edit),
            Divider(
              color: Colors.white.withOpacity(0.3),
              thickness: 0.2,
            ),
            const SizedBox(height: 10),

            customEditProfileItem(
                label: 'About',
                tittle: 'Hey there! I am using WhatsApp.',
                subTittle: '',
                leadingIcon: Icons.error_outline,
                trailingIcon: Icons.edit),
            Divider(
              color: Colors.white.withOpacity(0.3),
              thickness: 0.2,
            ),
            const SizedBox(height: 10),
            customEditProfileItem(
                label: 'Phone',
                tittle: '01405665854',
                leadingIcon: Icons.phone,
                subTittle: ''),
          ],
        ),
      ),
    );
  }
}
