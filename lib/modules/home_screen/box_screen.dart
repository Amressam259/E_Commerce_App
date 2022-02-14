import 'package:flutter/material.dart';
import 'package:untitled/shared/components/components.dart';

import 'home_screen.dart';

class BoxScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Padding(
          padding: const EdgeInsets.only(right: 100),
          child: Text('السلة', style: TextStyle(
              color: Colors.black
          ),),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image(image: AssetImage('assets/images/bag2.png',)),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Image(image: AssetImage('assets/images/smile.png')),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text('السلة فارغه',style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w500
          ),),
          SizedBox(
            height: 15.0,
          ),
          Text('املأ سلتك بالعديد من المنتجات'),
          SizedBox(
            height: 15.0,
          ),
          Container(
            width: 323,
            height: 59,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(0)
            ),
            child: TextButton(
                onPressed: ()
                {
                  navigateTo(context, HomeScreen());
                },
                child: Text('الذهاب للمنتجات',style: TextStyle(
                  color: Colors.white
                ),)),
          )
        ],
      ),
    );
  }
}
