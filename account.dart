import 'package:flutter/material.dart';
import 'package:instagram/pages/util/account_tab1.dart';
import 'package:instagram/pages/util/account_tab2.dart';
import 'package:instagram/pages/util/account_tab3.dart';
import 'package:instagram/pages/util/account_tab4.dart';
import 'package:instagram/pages/util/bubble_stories.dart';
class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.circle,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('237',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20
                      ),),
                      Text('Posts'),
                    ],
                  ),
                   Column(
                    children: [
                      Text('4M',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20
                      ),),
                      Text('Followers'),
                    ],
                  ),
                   Column(
                    children: [
                      Text('95',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20
                      ),),
                      Text('Following'),
                    ],
                  ),
                ],
              ),
            ),
            
            ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('dure',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text('I create apps',
                    style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(8),
                  child: Center(child: Text('Edit Profile')),
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5)),),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(8),
                  child: Center(child: Text('Ad Tools')),
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5)),),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(8),
                  child: Center(child: Text('Insights')),
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5)),),
                ),
              ),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
            child: Row(
              children: [
                BubbleStories(text: 'story 1'),
                BubbleStories(text: 'story 1'),
                BubbleStories(text: 'story 1'),
                BubbleStories(text: 'story 1'),
                BubbleStories(text: 'story 1'),
            
            ],),
          ),
          TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.grid_3x3_outlined),
              ),
              Tab(
                icon: Icon(Icons.video_call),
              ),
              Tab(
                icon: Icon(Icons.shop),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
            ],
          
          ),
          Expanded(
            child: TabBarView(children: [
              AccountTab1(),
              AccountTab2(),
              AccountTab3(),
              AccountTab4(),
            ],))

            
      
      
        ],
        ),
      ),
    );
  }
}