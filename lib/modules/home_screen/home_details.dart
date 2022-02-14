import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/shared/components/components.dart';
import 'package:untitled/shared/styles/icon_broken.dart';

import 'box_screen.dart';
import 'home_screen.dart';

class HomeDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD4DCE9),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xffD4DCE9),
        ),
        backgroundColor: Color(0xffD4DCE9),
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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:
          [
            Center(child: Padding(
              padding: const EdgeInsets.only(top: 0,left: 25),
              child: Image(image: AssetImage('assets/images/takm.png'),),
            )),
            SizedBox(
              height: 5.0,
            ),

            Card(
              elevation: 15,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children:
                      [
                        Text('طاقم بورسلين ازرق',style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),),
                        Spacer(),
                        IconButton(onPressed: (){}, icon: Icon(IconBroken.Heart)),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text('أدوات المائده'),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text('هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص '),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children:
                      [
                        Text('S.R',style: TextStyle(
                          color: Colors.red
                        ),),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text('350',style: TextStyle(
                          color: Colors.red
                        ),),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children:
                          [
                            IconButton(onPressed: (){}, icon: Icon(Icons.add_box_rounded)),
                            Text('1',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17
                            ),),
                            IconButton(onPressed: (){}, icon: Icon(Icons.indeterminate_check_box)),


                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 70),
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(0)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: (){}, child: Text('أضف للسلة',style: TextStyle(
                              color: Colors.white
                            ),)),
                            Icon(IconBroken.Buy,color: Colors.white,)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
