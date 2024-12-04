import 'package:flutter/material.dart';

class CustomItemUser extends StatelessWidget {
  final int countFollower;
  final int countPosts;
  final int countFollowing;
  const CustomItemUser({super.key,required this.countFollowing,required this.countFollower,
    required this.countPosts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            Text("$countFollower",style:const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),),
          const  Text("Follower",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,color: Colors.white
            ),),
          ],),
          Column(children: [
            Text("$countPosts",style:const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),),
          const  Text("Posts",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),),
          ],),
          Column(children: [
            Text("$countFollowing",style:const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),),
          const  Text("Following",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),),
          ],),
        ],
      ),
    );
  }
}
