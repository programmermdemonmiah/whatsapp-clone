import 'package:chat_app/Practice/userInfo_model.dart';
import 'package:chat_app/Screens/Utils/profile_info.dart';
import 'package:flutter/material.dart';

class PracticeWidget extends StatefulWidget {
  const PracticeWidget({super.key});

  @override
  State<PracticeWidget> createState() => _PracticeWidgetState();
}

class _PracticeWidgetState extends State<PracticeWidget> {
  // List<Map<String, dynamic>> userInfo = [
  //   {
  //     'name' : 'Md. Emon Miah',
  //     'age' : 21,
  //     'image' : profilePicture,
  //     'gender' : 'male',
  //     'ocupation' : 'Software Engineer'
  //     ''
  //   },
  //   {
  //     'name' : 'Md. Emon Miah',
  //     'age' : 21,
  //     'image' : profilePicture,
  //     'gender' : 'male',
  //     'ocupation' : 'Software Engineer'
  //   },
  //   {
  //     'name' : 'Md. Emon Miah',
  //     'age' : 21,
  //     'image' : profilePicture,
  //     'gender' : 'male',
  //     'ocupation' : 'Software Engineer'
  //   },
  //   {
  //     'name' : 'Md. Emon Miah',
  //     'age' : 21,
  //     'image' : profilePicture,
  //     'gender' : 'male',
  //     'ocupation' : 'Software Engineer'
  //   },
  //   {
  //     'name' : 'Md. Emon Miah',
  //     'age' : 21,
  //     'image' : profilePicture,
  //     'gender' : 'male',
  //     'ocupation' : 'Software Engineer'
  //   },
  //   {
  //     'name' : 'Md. Azizul Hakim',
  //     'age' : 21,
  //     'image' : profilePicture,
  //     'gender' : 'male',
  //     'ocupation' : 'Software Engineer'
  //   },
  //   {
  //     'name' : 'Md. Siam Miah',
  //     'age' : 21,
  //     'image' : profilePicture,
  //     'gender' : 'male',
  //     'ocupation' : 'Software Engineer'
  //   },
  //   {
  //     "name" : "Md. Shihab Miah",
  //     "age" : 21,
  //     "image" : "profilePicture",
  //     "gender" : "male",
  //     "ocupation" : "Software Engineer"
  //   },
  // ];

  List<UserInfo> userInfo = [
    UserInfo(image: profilePicture, name: 'Md. Emon Miah', age: 21, gender: 'male', ocupation: 'Engineer')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice Widget'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          shrinkWrap: true,
            primary: false,
            itemCount: userInfo.length,
            itemBuilder: (context, index) {
            final data = userInfo[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    data.image.toString()
                  ),
                ),
                title: Text(data.name.toString()),
                subtitle: Text( data.ocupation.toString()),
                trailing: Column(
                  children: [
                    Text(data.age.toString() ),
                    SizedBox(height: 3,),
                    Text( data.gender.toString())
                  ],
                ),
              );
            },
        ),
      ),
    );
  }
}

//model class
class UserInformation{
  String name;
  String occupation;
  String image;
  String gender;
  int ? age;
  // namedConstractor
  UserInformation({
    required this.name, required this.occupation, required this.image, required this.gender, this.age
});
}
