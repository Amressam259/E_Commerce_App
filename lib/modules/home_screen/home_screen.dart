import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/modules/drawer/blog_screen.dart';
import 'package:untitled/modules/drawer/who_we_are_Screen.dart';
import 'package:untitled/shared/components/components.dart';
import 'package:untitled/shared/styles/icon_broken.dart';

import 'box_screen.dart';
import 'home_details.dart';


class productsModel {
  String image;
  String text;
  String textPrice;
  String price;

  productsModel({this.image, this.text, this.textPrice, this.price});
}

class HomeScreen extends StatelessWidget {
  List<productsModel> products = [
    productsModel(
      image: 'https://sc04.alicdn.com/kf/HTB1r65KbifrK1RjSspbq6A4pFXa1.jpg',
      text: 'طاقم بورسلين ازرق',
      textPrice: 'S.R',
      price: '350',
    ),
    productsModel(
      image: 'https://image.freepik.com/free-vector/wooden-table-foreground-wood-tabletop-front-view-light-brown-rustic-countertop-surface_107791-5558.jpg',
      text: 'طاوله خشبيه',
      textPrice: 'S.R',
      price: '350',
    ),
    productsModel(
      image:
          'https://image.freepik.com/free-vector/clean-tableware-realistic-design-concept-with-stack-white-plates-glass-jug-wine-glasses-illustration_1284-31213.jpg',
      text: 'طاقم اطباق مزخرف',
      textPrice: 'S.R',
      price: '350',
    ),
  ];

  @override
  Widget build(BuildContext context) {

    List<String> Texts =
    [
      'ديكور المنزل',
      'ادوات المائدة',
      'أنتيك',
      'هدايا',
      'من نحن',
      'المدونه',
      'مشاركة التطبيق',
    ];
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context)
          {
            return TextButton(onPressed: (){
              Scaffold.of(context).openDrawer();
            }, child: Image(image: AssetImage('assets/images/drawer.png'),),);
          },
        ),
        actions: [InkWell(
            onTap: ()
            {
              navigateTo(context, BoxScreen());
            },
            child: Image(image: AssetImage('assets/images/bag.png')))],
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              ListTile(
                onTap: () {},
                leading: Icon(Icons.close),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  'القائمة الجانبية',
                  style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: ListTile(
                  onTap: (){},
                  leading: Text('ديكور المنزل',style: TextStyle(fontSize: 16,color: Colors.black87,fontWeight: FontWeight.normal),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: ListTile(
                  onTap: (){},
                  leading: Text('ادوات المائدة',style: TextStyle(fontSize: 16,color: Colors.black87,fontWeight: FontWeight.normal),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: ListTile(
                  onTap: (){},
                  leading: Text('أنتيك',style: TextStyle(fontSize: 16,color: Colors.black87,fontWeight: FontWeight.normal),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: ListTile(
                  onTap: (){},
                  leading: Text('هدايا',style: TextStyle(fontSize: 16,color: Colors.black87,fontWeight: FontWeight.normal),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: ListTile(
                  onTap: ()
                  {
                    navigateTo(context, WhoWeAre());
                  },
                  leading: Text('من نحن',style: TextStyle(fontSize: 16,color: Colors.black87,fontWeight: FontWeight.normal),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: ListTile(
                  onTap: ()
                  {
                    navigateTo(context, BlogScreen());
                  },
                  leading: Text('المدونه',style: TextStyle(fontSize: 16,color: Colors.black87,fontWeight: FontWeight.normal),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: ListTile(
                  onTap: (){},
                  leading: Text('مشاركة التطبيق',style: TextStyle(fontSize: 16,color: Colors.black87,fontWeight: FontWeight.normal),),
                ),
              ),



            ],
          ),
        ),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 50,
                width: 400,
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
                height: 10.0,
              ),
              CarouselSlider(
                  items: [
                    Stack(
                      children: [
                        Image(
                          image: AssetImage('assets/images/carousel.png'),
                          width: double.infinity,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 240, top: 5),
                          child: Image(
                            image: AssetImage('assets/images/abagora.png'),
                            height: 80,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 41),
                          child: Text(
                            'أباجورات مودرن',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 44, right: 41),
                          child: Text(
                            'أسعار تبدأ من',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50, right: 150),
                          child: Row(
                            children: [
                              Text(
                                'S.R',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                '100',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                  options: CarouselOptions(
                    height: 100.0,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: false,
                    viewportFraction: 1.0,
                    pageSnapping: true,
                  )),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Text(
                    'الأكثر بيعا',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'عرض الكل',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  SizedBox(
                    width: 2.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: InkWell(
                        onTap: () {},
                        child: Image(
                            image: AssetImage('assets/images/arrow.png'))),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 150,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) =>
                        buildProducts(products[index], context),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 5.0,
                        ),
                    itemCount: products.length),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Text(
                    'اخترنا لك',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  Spacer(),
                  Text(
                    'عرض الكل',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  SizedBox(
                    width: 2.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: InkWell(
                        onTap: () {},
                        child: Image(
                            image: AssetImage('assets/images/arrow.png'))),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 150,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) =>
                        buildProducts(products[index], context),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 5.0,
                        ),
                    itemCount: products.length),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProducts(productsModel model, context) => InkWell(
    onTap: (){
      navigateTo(context, HomeDetails());
    },
    child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: NetworkImage('${model.image}'),
                  height: 100,
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      '${model.text}',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Icon(
                          IconBroken.Heart,
                          size: 15,
                        ))
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Text(
                      '${model.textPrice}',
                      style: TextStyle(fontSize: 12.0, color: Colors.red),
                    ),
                    SizedBox(
                      width: 2.0,
                    ),
                    Text(
                      '${model.price}',
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
  );
}
