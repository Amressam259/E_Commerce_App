import 'package:flutter/material.dart';

class WhoWeAre extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(right: 100),
          child: Text('من نحن',style: TextStyle(
              fontSize: 19.0,
              fontWeight: FontWeight.bold
          ),),
        )
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Text('هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام "هنا يوجد محتوى نصي، هنا يوجد محتوى نصي" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال "lorem ipsum" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey[800],
                height: 1.4
              ),),
              SizedBox(
                height: 15.0,
              ),
              Text('بالتأكيد نعم، و لسوف نتعرف مع عيادة أسنان اندلسية علي بعض الإرشادات والنصائح التي تمكن مريض السكري من الاستفادة من هذا التطور الطبي وإجراء زراعة الأسنان واستعادة الابتسامة المفقودة',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey[800],
                height: 1.4
              ),),
              SizedBox(
                height: 25.0,
              ),
              Text('او تواصل معنا',style: TextStyle(
                fontSize: 16,
                color: Colors.black
              ),),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                    height: 32,
                      width: 32,
                      image: AssetImage('assets/images/facebook.png',)),
                  SizedBox(
                    width: 10.0,
                  ),
                  Image(
                    height: 32,
                      width: 32,
                      image: AssetImage('assets/images/google.png',)),
                  SizedBox(
                    width: 10.0,
                  ),
                  Image(
                    height: 32,
                      width: 32,
                      image: AssetImage('assets/images/twitter.png',)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
