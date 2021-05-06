import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {
  final String title;
  final String count;
  final bool open;

  Accordion(this.title,this.count,this.open);
  @override
  _AccordionState createState() => _AccordionState();

}

class _AccordionState extends State<Accordion> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.open == true){
      _showContent =true;
    }
    else{_showContent = false;}
  }

  var info = """ حتما کراتین ۳۰۰ گرمی باشه و تاریخ و هولوگرام
روی محصول ثبت شده باشد، حتما کراتین ۳۰۰ گرمی باشه و
تاریخ و هولوگرام داشته باشه""";




  bool _showContent;
  @override
  Widget build(BuildContext context) {
    var wi = MediaQuery.of(context).size.width;

    return Directionality(textDirection: TextDirection.rtl, child: Container(
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
        margin: EdgeInsets.symmetric(vertical: wi*.02,horizontal:  wi*.035),
      child: Column(children: [
        ListTile(
          title: Text(widget.title,textDirection: TextDirection.rtl),
          trailing: IconButton(
            icon: Icon(
                _showContent ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded ,color: Colors.blue,size: wi*.08,),
            onPressed: () {
              setState(() {


                _showContent = !_showContent;
              });
            },
          ),
        ),
        _showContent
            ? Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'تعداد : ',
                  style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black,fontSize: wi*.034),
                  children: <TextSpan>[
                    TextSpan(text:widget.count, style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black),),

                  ],
                ),
              ),
              SizedBox(height: wi*.08,),

              RichText(
              text: TextSpan(
                text: 'توضيحات شما : ',
                style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black,fontSize: wi*.034),
                children: <TextSpan>[
                  TextSpan(text:info, style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black),),

                ],
              ),
            ),

          ],),
          //child: Text(widget.content,textDirection: TextDirection.rtl,),
        )
            : Container()
      ]),
    ));
  }
}
