import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled/layout/shop_layout.dart';
import 'package:untitled/shared/components/components.dart';

class onBoarding {
  String image;
  String title;
  String text;

  onBoarding({this.image, this.title, this.text});
}

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<onBoarding> boarding =
  [
    onBoarding(
      image:
          'https://cdn.discordapp.com/attachments/734028401505075300/924322613956857927/unknown.png',
      title: 'عروض خاصة وهدايا علي مختلف',
      text: 'المشتريات من خلال المتجر',
    ),
    onBoarding(
      image:
          'https://cdn.discordapp.com/attachments/734028401505075300/924322662895976448/unknown.png',
      title: 'اسرع التسلم والتسليم إلى',
      text: ' باب المنزل في جميع أنحاء المملكة',
    ),
    onBoarding(
      image:
          'https://cdn.discordapp.com/attachments/734028401505075300/924322700430811146/unknown.png',
      title: 'يسعدنا الرد عليك في أي وقت ، بغض',
      text: 'النظر عن استفسارك أو مشكلتك',
    ),
  ];

  bool isBoard = false;

  var onBoardKey = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: InkWell(
            onTap: () {
              navigateAndFinish(context, ShopLayout());
            },
            child: Text(
              'تخطي',
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w100,
                  color: Colors.grey[500]),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: PageView.builder(
            physics: BouncingScrollPhysics(),
            onPageChanged: (value) {
              if (value == boarding.length - 1) {
                setState(() {
                  isBoard = true;
                });
              } else {
                setState(() {
                  isBoard = false;
                });
              }
            },
            controller: onBoardKey,
            itemBuilder: (context, index) => buildOnBoard(boarding[index]),
            itemCount: boarding.length,
          ),
        ));
  }

  Widget buildOnBoard(onBoarding model) => Column(
        children: [
          Center(
            child: Container(
              height: 280,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Image(
                  fit: BoxFit.fitWidth,
                  image: NetworkImage('${model.image}'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              '${model.title}',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w100),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Text(
              '${model.text} ',
              style: TextStyle(color: Colors.grey[700], fontSize: 18),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 70, left: 70),
                  child: FloatingActionButton(
                    backgroundColor: Colors.grey,
                    mini: true,
                    onPressed: ()
                    {
                      onBoardKey.previousPage(duration: Duration(
                        milliseconds: 750
                      ), curve: Curves.fastLinearToSlowEaseIn);
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70, right: 50),
                    child: SmoothPageIndicator(
                      controller: onBoardKey,
                      count: boarding.length,
                      effect: ExpandingDotsEffect(
                          dotColor: Colors.grey,
                          activeDotColor: Colors.black,
                          expansionFactor: 4,
                          dotHeight: 10,
                          dotWidth: 6,
                          spacing: 5),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70, right: 70),
                    child: FloatingActionButton(
                      mini: true,
                      onPressed: () {
                        if (isBoard) {
                          navigateTo(context, ShopLayout());
                        }
                        onBoardKey.nextPage(
                            duration: Duration(milliseconds: 750),
                            curve: Curves.fastLinearToSlowEaseIn);
                      },
                      child: Icon(Icons.arrow_forward),
                      backgroundColor: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
