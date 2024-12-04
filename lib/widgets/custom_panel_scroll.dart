import 'package:flutter/material.dart';

import '../model/user_model.dart';

class CustomPanelScroll extends StatefulWidget {
 final UserModel users;
  GestureTapCallback  onPressed;
   CustomPanelScroll(
      {super.key,
        required this.users,
        required this.onPressed,
      });

  @override
  State<CustomPanelScroll> createState() => _CustomPanelScrollState();
}

class _CustomPanelScrollState extends State<CustomPanelScroll> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      height: 400,
      child: Column(
        children: <Widget>[
          Row(
           // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(

                children: [
                  Text(widget.users.name,style:const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,

                  ),
                  textAlign: TextAlign.start,),
                const  Text("United states",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),),
                ],
              ),
             Spacer(),
              _FollowBottom(widget.users),

            ],
          ),

         const SizedBox(height: 10,),
         Text(widget.users.bio,style:const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),),
       const  SizedBox(height: 5,),
         const Align(
            alignment: Alignment.centerLeft,
            child: Text("Photos",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),),
          ),
           Expanded(
             child: ListView(
               scrollDirection: Axis.horizontal,
               children: widget.users.urlImages.map((url)=>
                  Container(
                    width: 120,
                    height: 100,
                    padding: EdgeInsets.only(right: 5),
                    child: Image.asset(url,fit: BoxFit.cover,),
                  ) ).toList(),
                 
              
             ),
           ),

        ],
      ),
    );
  }
 Widget _FollowBottom(UserModel users){
    return GestureDetector(
      onTap:widget.onPressed,
      child: AnimatedContainer(
        duration: Duration(
          milliseconds: 300,
        ),
        width: users.isFollowing?120:50,
        height: 50,
        curve: Curves.easeIn,
        child: users.isFollowing?_bulidFollow():_bulidUnFollow() ,
      ),

    );
  }
}

 _bulidFollow(){
   return Container(
     decoration: BoxDecoration(
       color: Colors.teal,
       borderRadius: BorderRadius.circular(20),
       border:Border.all(color: Colors.teal,width: 1.0),
     ),
     child:const FittedBox(
       child: Text("Follow",style: TextStyle(

         fontSize: 10,
       ),),
     ),
   );
 }
_bulidUnFollow(){
  return  const  CircleAvatar(
    backgroundColor: Colors.teal,
      child: Icon(Icons.people,color: Colors.white,)
  );
}




