import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../controller/homeController.dart';
import '../../core/constant/color.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final ref = FirebaseDatabase.instance.ref('sensorsData/gpsData');

  @override
  Widget build(BuildContext context) {
    HomeImp controller= Get.put(HomeImp());
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("TRITON",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: AppColors.blue,
        ),),
        centerTitle: true ,
        actions:  [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.notifications_active_outlined,color: AppColors.blue,),
        )],
        backgroundColor: AppColors.white,
      ),
      drawer: Drawer(child: ListView(
        children: [

          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                color: AppColors.white),
            accountName: Text(
              'NadaWaleed23',style: TextStyle(color: Colors.black)

            ),
            accountEmail: Text(
              "Nadawaleeddm2002@gmail.com",style: TextStyle(color: Colors.black),

            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: const AssetImage("assets/images/cute-girl-vector-art-profile-picture-jhbu3wt713zj2bti.jpg"),
          ),),
          ListTile(
            trailing: Icon(Icons.home,color: AppColors.blue,),

            title:  Text('Home',style: TextStyle(color: AppColors.blue)),
            onTap: () {
              // Handle navigation to the home screen.
            },
          ),
          ListTile(
            trailing: Icon(Icons.person,color: AppColors.blue,),

            title:  Text('Profile',style: TextStyle(color: AppColors.blue)),
            onTap: () {
              // Handle navigation to the home screen.
            },
          ),
          ListTile(
            trailing: Icon(Icons.settings,color: AppColors.blue,),

            title:  Text('Setting',style: TextStyle(color: AppColors.blue)),
            onTap: () {
              // Handle navigation to the home screen.
            },
          ),

          ListTile(
            trailing: Icon(Icons.pool,color: AppColors.blue,),

            title: Text('Instructions',style: TextStyle(color: AppColors.blue)),
            onTap: () {
              // Handle navigation to the home screen.
            },
          ),

          ListTile(
            trailing: Icon(Icons.people,color: AppColors.blue,),

            title:  Text('Linked Devices',style: TextStyle(color: AppColors.blue)),
            onTap: () {
              // Handle navigation to the home screen.
            },
          ),
          ListTile(
            trailing:Icon(Icons.info,color: AppColors.blue,),

            title:  Text('About',style: TextStyle(color: AppColors.blue)),
            onTap: () {
              // Handle navigation to the home screen.
            },
          ),
          ListTile(
            trailing: Icon(Icons.logout,color: AppColors.blue,),

            title:  Text('Log Out',style: TextStyle(color: AppColors.blue)),
            onTap: () {
              // Handle navigation to the home screen.
            },
          ),
        ],
      ),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
          SvgPicture.asset("assets/svg/weather.svg"
          ,
            height:200,
            width:double.maxFinite,
          ),
         Gap(20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Life Shirts", style: TextStyle(color: AppColors.blue,fontSize: 20),),
                IconButton(icon: Icon(Icons.add),color: AppColors.blue, onPressed: (){controller.childData();},)
              ],),
              SizedBox(
                width: double.maxFinite,
                height: 300,
                child: Card(color: AppColors.white,
                  elevation: 4,
                  child:
                   FirebaseAnimatedList(query: ref, itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index) {
                    return Card(color: AppColors.white,
                      child: ListTile(leading: SvgPicture.asset("assets/svg/game-icons_life-jacket.svg"
                        ,
                        height: 20,
                        width:20,
                      ),
                        title: Text("Nada's Shirt"),
                        subtitle:

                           Row(children: [SvgPicture.asset("assets/svg/monitor-heart-rate-info.svg"
                              ,
                              height: 15,
                              width:15,
                            ),
                              Text(controller.heartRate,style: TextStyle(fontSize: 10),),
                              Gap(10),
                              SvgPicture.asset("assets/svg/material-symbols_spo2-outline.svg"
                                ,
                                height: 15,
                                width:15,
                              ),
                            Text(controller.spo2,style: TextStyle(fontSize: 10),),
                        ],


                            ), trailing: IconButton(onPressed: () {  }, icon:Icon(Icons.arrow_forward_ios_outlined,size: 15,),),

                      ),
                    );

                  }),


                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
