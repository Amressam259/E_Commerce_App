import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/shared/components/components.dart';

import 'Section_details.dart';


class SectionsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('الاقسام',style:  TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
      body: Column(
        children:
        [
          ExpansionTile(
            childrenPadding: EdgeInsetsDirectional.only(
              start: 18.0,
              end: 15
            ),
              leading: Image(image: AssetImage('assets/images/table.png'),),
          title: Text("ديكور المنزل"),
            children:
            [
              Column(
                children: [
                  InkWell(
                    child: Row(
                      children:
                      [
                        Text('أطقم بورسلين'),
                        Spacer(),
                        Icon(Icons.arrow_right)
                      ],
                    ),
                    onTap: ()
                    {
                      navigateTo(context, SetionDetails());
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children:
                    [
                      Text('أطقم  طاولات'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children:
                    [
                      Text('سلات ومناديل'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children:
                    [
                      Text('عربيات'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children:
                    [
                      Text('صواني تقديم'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children:
                    [
                      Text('طفايات'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              )
            ],
            textColor: Colors.grey,

          ),
          Divider(),
          ExpansionTile(
            childrenPadding: EdgeInsetsDirectional.only(
                start: 18.0,
                end: 15
            ),
            leading: Image(image: AssetImage('assets/images/table.png'),),
            title: Text("أدوات المائدة"),
            children:
            [
              Column(
                children: [
                  Row(
                    children:
                    [
                      Text('أطقم بورسلين'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children:
                    [
                      Text('أطقم  طاولات'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children:
                    [
                      Text('سلات ومناديل'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children:
                    [
                      Text('عربيات'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children:
                    [
                      Text('صواني تقديم'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children:
                    [
                      Text('طفايات'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              )
            ],
            textColor: Colors.grey,

          ),
          Divider(),
          ExpansionTile(
            childrenPadding: EdgeInsetsDirectional.only(
                start: 18.0,
                end: 15
            ),
            leading: Image(image: AssetImage('assets/images/table.png'),),
            title: Text("أنتيك"),
            children:
            [
              Column(
                children: [
                  Row(
                    children:
                    [
                      Text('أطقم بورسلين'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children:
                    [
                      Text('أطقم  طاولات'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children:
                    [
                      Text('سلات ومناديل'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children:
                    [
                      Text('عربيات'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children:
                    [
                      Text('صواني تقديم'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children:
                    [
                      Text('طفايات'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              )
            ],
            textColor: Colors.grey,

          ),
          Divider(),
          ExpansionTile(
            childrenPadding: EdgeInsetsDirectional.only(
                start: 18.0,
                end: 15
            ),
            leading: Image(image: AssetImage('assets/images/table.png'),),
            title: Text("هدايا"),
            children:
            [
              Column(
                children: [
                  Row(
                    children:
                    [
                      Text('أطقم بورسلين'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children:
                    [
                      Text('أطقم  طاولات'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children:
                    [
                      Text('سلات ومناديل'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children:
                    [
                      Text('عربيات'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children:
                    [
                      Text('صواني تقديم'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children:
                    [
                      Text('طفايات'),
                      Spacer(),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              )
            ],
            textColor: Colors.grey,

          ),
          Divider(),
        ],
      ),
    );
  }
}