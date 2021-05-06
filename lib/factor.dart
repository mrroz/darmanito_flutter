


import 'package:darmanito/dotWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './accordion.dart';

class Sefaresh1 extends StatefulWidget {
  @override
  _Sefaresh1State createState() => _Sefaresh1State();
}

class _Sefaresh1State extends State<Sefaresh1> {

  List farsi = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];

  @override
  Widget build(BuildContext context) {

    var wi = MediaQuery.of(context).size.width;

    final textStyleBold =  TextStyle(fontWeight: FontWeight.w900,color: Colors.black,fontSize: wi*.035);


    return Scaffold(

      appBar:_myAppbar(wi,context) ,

      body: SafeArea(
          child: Container(
            child: ListView(
              children: [

               _data_address(wi,textStyleBold),
               _productTitle(wi,textStyleBold,'محصولات سفارش'),
                Accordion('کراتین مونوهیدرات ژن استار','۱',false),
                Accordion('کراتین مونوهیدرات ژن استار','۱',true),
                _panelMonyInfo(wi),
                _productTitle(wi,textStyleBold,'توضیحات کلی سفارش'),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(wi*.03)),
                      boxShadow:[
                        BoxShadow(
                          color: Colors.black.withOpacity(0.19),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ]

                  ),
                  margin: new EdgeInsets.only( bottom: wi*.06,right: wi*.03,left: wi*.03),
                  padding:new EdgeInsets.all( wi*.03) ,
                  child: Text("""در اینجا اگه کاربر در سفارش نام محصول در قدم نهایی برای
کل سفارش توضیحی وارد کرده باشه نمایش میدیم""",textDirection: TextDirection.rtl,style: TextStyle(fontSize:wi*.035,color: Colors.black87,fontWeight: FontWeight.w600 ),),
                ),





              ],),
      )),

    );
  }










  Widget _myAppbar(wi,context){
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Builder(builder: (context) =>GestureDetector(
          onTap: ()=>Scaffold.of(context).openEndDrawer(),
          child:Container(
            margin: new EdgeInsets.only(right: wi*.03),
            child: Icon(Icons.arrow_right_alt,size: wi*.11,),),)),


      ],

      title: Container(
        child: Text('سفارش ۷۴۳۲۵۰ ',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900)),
      ),

      leading: Container(
        child:   GestureDetector(
            onTap: ()=>Navigator.pop(context),
            child: Icon(Icons.home_outlined,color: Colors.blue,size:wi*.09 ,)),),

    );
  }











  Widget _data_address(wi,TextStyle styleBold){
    return Container(
      margin:new EdgeInsets.all( wi*.01) ,
      padding: new EdgeInsets.all( wi*.05),
      child: Column(
        textDirection: TextDirection.rtl,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

            child: RichText(
              text: TextSpan(
                text: 'تاريخ : ',
                style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: '۲۸ فروردين ۱۳۹۹ ', style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black)),
                  // TextSpan(text: ' world!'),
                ],
              ),
            ),
          ),
          Container(
            margin:new EdgeInsets.only(  right: wi*.013) ,
            child: RichText(
              text: TextSpan(
                text: 'آدرس : ',
                style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: 'تهران ، چهاردانگه ، شهرک قدس ، كوچه دوم', style: styleBold),
                  // TextSpan(text: ' world!'),
                ],
              ),
            ),
          ),
        ],),
    );
  }









  Widget _productTitle(wi,textStyleBold,String srt){
    return  Align(
      alignment: Alignment.centerRight,
      child:Container(
        margin:new EdgeInsets.all( wi*.009) ,
        padding: new EdgeInsets.all( wi*.04),
        child: Text(srt,style: textStyleBold,),
      ) ,);
  }










  Widget _panelMonyInfo(wi){
    final textStyleBold =  TextStyle(fontWeight: FontWeight.w900,color: Colors.black,fontSize: wi*.035);
    final textStyleLight =  TextStyle(fontWeight: FontWeight.w700,color: Colors.black,fontSize: wi*.03);

    final styleMony =  TextStyle(fontWeight: FontWeight.w700,color: Colors.blue,fontSize: wi*.04);
    final styleMonyTitle =  TextStyle(fontWeight: FontWeight.w700,color: Colors.black54,fontSize: wi*.04);

    return Container(
      margin: new EdgeInsets.all( wi*.03),
      padding:new EdgeInsets.only( bottom: wi*.06,top: wi*.06) ,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(wi*.03)),
          boxShadow:[
            BoxShadow(
              color: Colors.black12.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ]

      ),

      child: Column(children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Container(
              margin: new EdgeInsets.only(left: wi*.03) ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('تامین اجتماعی',textDirection: TextDirection.ltr,style: styleMony,),
                  Text('آزاد',textDirection: TextDirection.ltr,style: styleMony),
                  Text('۱۲۵,۰۰۰ تومان',textDirection: TextDirection.rtl,style: styleMony),
                  Text('رایگان',textDirection: TextDirection.ltr,style: styleMony),
                ],),
            ),

            Container(
              margin: new EdgeInsets.only(right: wi*.03) ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('بیمه :',textDirection: TextDirection.rtl,style: styleMonyTitle,),
                  Text('بیمه تکمیلی :',textDirection: TextDirection.rtl,style: styleMonyTitle,),
                  Text('جمع کل :',textDirection: TextDirection.rtl,style: styleMonyTitle,),
                  Text('هزینه پیک :',textDirection: TextDirection.rtl,style: styleMonyTitle,),
                ],),
            ),

          ],),

        SizedBox(height: wi*.1,),

        DotWidget(
            dashColor: Colors.black87,
            dashHeight: 1,
            dashWidth: 1,
            totalWidth:wi*.9

        ),

        Column(

          children: [
            Text('مبلغ نهایی',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.blue,fontSize: wi*.06) ,),
            Text(' ۱۲۵,۰۰۰ تومان',  textDirection: TextDirection.rtl,style: TextStyle(fontWeight: FontWeight.w900,color: Colors.blue,fontSize: wi*.06),)

          ],)

      ],),
    );
  }
}
