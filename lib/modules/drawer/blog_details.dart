import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled/shared/components/components.dart';
import 'package:untitled/shared/styles/icon_broken.dart';

import 'blog_screen.dart';

class BlogDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            CarouselSlider(items: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Image(image: AssetImage('assets/images/lapMark2.png'),width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, right: 130),
                    child: Text('تفاصيل المدونه',style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: IconButton(onPressed: ()
                    {
                      navigateTo(context, BlogScreen());
                    }, icon: Icon(IconBroken.Arrow___Right,color: Colors.white,)),
                  ),


                ],
              )

            ], options: CarouselOptions(

              height: 300.0,
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
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Text('خبراء التسويق الالكتروني',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
                color: Colors.black
              ),),

            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text('هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام "هنا يوجد محتوى نصي، هنا يوجد محتوى نصي" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال "lorem ipsum" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[800],
                  height: 1.4
              ),),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text('بالتأكيد نعم، و لسوف نتعرف مع عيادة أسنان اندلسية علي بعض الإرشادات والنصائح التي تمكن مريض السكري من الاستفادة من هذا التطور الطبي وإجراء زراعة الأسنان واستعادة الابتسامة المفقودة',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[800],
                  height: 1.4
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
