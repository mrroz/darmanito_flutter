
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  @override
  _AlertState createState() => _AlertState();
}

class _AlertState extends State<Alert> {

  List alert_info =[
    """کاربران گرامی در تکمیل سفارش خود حتما به توضیحات
داروخانه و به اطلاعات ارسالی داروخانه درباره سفارش    
هست توجه فرمایید    """,
    """سفارش خود را با Darmanito فقط امروز با کد تخفیف
۳۰ درصد تخفیف ثبت کنید     """,
    """کاربران گرامی در تکمیل سفارش خود حتما به توضیحات
داروخانه و به اطلاعات ارسالی داروخانه درباره سفارش     
هست توجه فرمایید    """
  ];

  List alert_title=[
    "اطلاعیه",
    "کد تخفیف 30 %برای امروز",
    "اطلاعیه"
  ];

  List alert_icons=[
    'images/alerticon.jpg',
    'images/gifticon.jpg',
    'images/alerticon1.jpg',
  ];



  @override
  Widget build(BuildContext context) {

    var wi = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _myAppbar(wi),
      body: Container(
        margin: new EdgeInsets.only(  top:wi*.07,),
        width: wi,
        height: he,
        padding:  new EdgeInsets.only(right: wi*.03),
        child: Center(child: ListView.builder(
          itemCount: alert_title.length,

            itemBuilder: (context,index)=>_alert_item(wi,index)

        )),

      ),
    );
  }



  Widget _myAppbar(wi){
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: new EdgeInsets.only(right: wi*.03),
          child: Image.asset('images/icon.png',width: wi*.11,),)
      ],

      title: Container(
        child: Text('پيام های من',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900)),
      ),

      leading: Container(
        child:   GestureDetector(
            onTap: ()=>Navigator.pop(context),
            child: Icon(Icons.home_outlined,color: Colors.blue,size:wi*.09 ,)),),

    );
  }


  Widget _alert_item(wi,index){
    return Container(
      margin: new EdgeInsets.symmetric(  horizontal: wi*.03,vertical: wi*.03) ,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(wi*.05)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: wi*.7,
            height: wi*.33,
            margin: new EdgeInsets.only(  top:wi*.01,) ,
            child:Column(
              textDirection: TextDirection.rtl,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(alert_title[index],textDirection: TextDirection.rtl,style: TextStyle(fontSize: wi*.05,fontWeight: FontWeight.w800),),
                Text(alert_info[index],textDirection: TextDirection.rtl,style: TextStyle(fontSize: wi*.035))
              ],),),
          Container(
              width: wi*.16,
              margin: new EdgeInsets.only(  right:wi*.03,left:wi*.02  ) ,
              child: CircleAvatar(radius: wi*.09,child: Image.asset(alert_icons[index]),)),
        ],),);
  }
}

