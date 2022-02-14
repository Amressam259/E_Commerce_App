import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/modules/home_screen/box_screen.dart';
import 'package:untitled/modules/home_screen/home_screen.dart';
import 'package:untitled/shared/components/components.dart';
import 'package:untitled/shared/styles/icon_broken.dart';


class SetionDetails extends StatefulWidget {
  @override
  State<SetionDetails> createState() => _SetionDetailsState();
}

class _SetionDetailsState extends State<SetionDetails> {
  var BottSheat = GlobalKey<ScaffoldState>();

  bool isSheat = false;

  bool iconSheat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: BottSheat,
      appBar: AppBar(
        title: Center(child: Text('أطقم بورسلين')),
        leading: IconButton(
          onPressed: ()
          {
            navigateTo(context, HomeScreen());
          },
          icon: Icon(IconBroken.Arrow___Right),
        ),
        actions: [
          InkWell(
              onTap: ()
              {
                navigateTo(context, BoxScreen());
              },
              child: Image(image: AssetImage('assets/images/bag.png')))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Row(
              children: [
                Container(
                  height: 39,
                  width: 340,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(0)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'ابحث من هنا',
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0),
                          child: Image(
                            image: AssetImage('assets/images/search.png'),
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                InkWell(
                    onTap: ()
                    {
                      if(isSheat)
                      {
                        Navigator.pop(context);
                        isSheat = false;
                      }else
                        {
                          BottSheat.currentState.showBottomSheet((context)
                          {
                            return Container(
                              height: 160,
                              width: double.infinity,
                              color: Colors.white70,
                              child:
                              SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:
                                    [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 10),
                                        child: Text('ترتيب حسب',style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Row(
                                        children: [
                                          TextButton(onPressed:
                                              ()
                                          {
                                            setState(() {
                                              // iconSheat = iconSheat;
                                              iconSheat = true;
                                              Icon(Icons.done);

                                            });
                                          }, child: Text('الاقل سعرا',style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 14
                                          ),)),
                                          Spacer(),
                                        ],
                                      ),

                                      Row(
                                        children: [
                                          TextButton(onPressed: ()
                                          {
                                            setState(() {
                                              iconSheat = false;
                                            });
                                          },
                                              child: Text('الاعلي سعرا',style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 14
                                          ),)),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );

                          });
                          isSheat = true;

                        }
                    },
                    child: Image(image: AssetImage('assets/images/menu.png'))),

              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Image(image: AssetImage('assets/images/takm.png'),height: 118,width: 118,),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text('طاقم بورسلين ازرق',style: TextStyle(
                  fontSize: 14.0
                ),),
                SizedBox(width: 5.0,),
                InkWell(
                    onTap: (){},
                    child: Icon(IconBroken.Heart,size: 17,))
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text('S.R',style: TextStyle(
                  color: Colors.red
                ),),
                Text('350',style: TextStyle(
                  color: Colors.red
                ),),
              ],
            )

          ],
        ),
      ),
    );
  }
}
