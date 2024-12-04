import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:social_ui/model/user_model.dart';

import '../widgets/custom_item_user.dart';
import '../widgets/custom_panel_scroll.dart';
class SocialPage extends StatefulWidget {
  const SocialPage({super.key});

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  //late List<UserModel>users;
  PanelController myController =PanelController();

  int index=0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:CurvedNavigationBar(
          index: 0,
         backgroundColor: Colors.teal,
          items: [
        Icon(Icons.home,size: 20),
        Icon(Icons.people_alt,size: 20,),
        Icon(Icons.join_inner,size: 20,),
      ]) ,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
       backgroundColor: Colors.transparent,
        leading:const Icon(Icons.person,color: Colors.white,),
        actions: [ Padding(
          padding: const EdgeInsets.all(8.0),
          child:const Icon(Icons.close,color: Colors.white,),
        )],
      ),
      body:SlidingUpPanel(
        maxHeight: 400,
        minHeight: 200,
        color: Colors.transparent,
       parallaxEnabled:true,
        parallaxOffset: 0.4,
        controller:myController ,

        body: PageView.builder(
            itemBuilder: (context,index)=>Image.asset(
              users[index].userImage
             ,fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            itemCount: users.length,
          onPageChanged: (index){
              if(this.index != index){
                setState(() {
                  this.index=index;
                });
              }
          },

      ),

        panelBuilder: (ScrollController scroll){
          return
            Column(
            children: [
              CustomItemUser(
                  countFollowing: users[index].countFollowing,
                  countFollower: users[index].countFollowers,
                  countPosts: users[index].countPosts,
              ),
              const SizedBox(height: 5,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color:  Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomPanelScroll(users: users[index],
                      onPressed: (){
                        if (users[index].isFollowing != !users[index].isFollowing) {
                          setState(() {
                            users[index].isFollowing = !users[index].isFollowing;
                          });
                        }
                      }),
                )
                ,
              ),
            ),

           ],
          );
        }


          ),

       );



  }
}

