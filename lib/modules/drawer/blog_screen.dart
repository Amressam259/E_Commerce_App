import 'package:flutter/material.dart';

import 'package:untitled/modules/home_screen/home_screen.dart';
import 'package:untitled/shared/components/components.dart';
import 'package:untitled/shared/styles/icon_broken.dart';

import 'blog_details.dart';
class BlogModel
{
  final String image;
  final String title;
  final String date;

  BlogModel({
    @required this.image,
    @required this.title,
    @required this.date,
  });
}
class BlogScreen extends StatelessWidget {
  List<BlogModel> blog = [
    BlogModel(
      image: 'assets/images/lapMark.png',
      title: 'خبراء التسويق الإلكترونى',
      date: '30' 'jan' '2022',
    ),
    BlogModel(
      image: 'assets/images/lapMark.png',
      title: 'خبراء التسويق الإلكترونى',
      date: '30' 'jan' '2022',
    ),
    BlogModel(
      image: 'assets/images/lapMark.png',
      title: 'خبراء التسويق الإلكترونى',
      date: '30' 'jan' '2022',
    ),
    BlogModel(
      image: 'assets/images/lapMark.png',
      title: 'خبراء التسويق الإلكترونى',
      date: '30' 'jan' '2022',
    ),
    BlogModel(
      image: 'assets/images/lapMark.png',
      title: 'خبراء التسويق الإلكترونى',
      date: '30' 'jan' '2022',
    ),
    BlogModel(
      image: 'assets/images/lapMark.png',
      title: 'خبراء التسويق الإلكترونى',
      date: '30' 'jan' '2022',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: ()
            {
              navigateTo(context, HomeScreen());
            },
            child: Icon(IconBroken.Arrow___Right)),
        title: Padding(
          padding: const EdgeInsets.only(right: 100),
          child: Text(
            'المدونه',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                clipBehavior: Clip.none,
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                childAspectRatio: 1.03 / 1.06,
                padding: EdgeInsets.zero,
                children: List.generate(
                  blog.length,
                      (index) => catItem(blog[index], context),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
  Widget catItem(BlogModel model, context) => InkWell(
    onTap: (){
      navigateTo(context, BlogDetails());
    },
    child: Card(
        elevation: 10.0,
        child: Column(
          children: [
            Image(
              image: AssetImage('${model.image}'),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              '${model.title}',
              style: TextStyle(fontSize: 12.0, color: Colors.black),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text('${model.date}'),
            SizedBox(
              height: 10.0,
            ),
          ],
        )),
  );
}
