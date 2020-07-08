import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsNew extends StatefulWidget {
  @override
  _WhatsNewState createState() => _WhatsNewState();
}

class _WhatsNewState extends State<WhatsNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _drawHeader(context),
          _topRecentTitles('Top Stories'),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Card(
              //color: Colors.red,
              child: Column(children: <Widget>[
                _drawSingleRowCardOne(),
                _drawSingleRowCardOne(),
                _drawDivider(),
                _drawSingleRowCardOne(),
              ]),
            ),
          ),
          _topRecentTitles("Top Recent Updates"),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    _drawSingleColumnCardTwo(context,"SPORTS","WHAT IS THE ITEM THERE YA AMER",Colors.deepPurple),
                     Divider(color: Colors.grey,),
                    _drawSingleColumnCardTwo(context,"favourite","what is the end of this mohamed amer said that",Colors.amber),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }



  //some methods used in this page ya amer but all of them are static not dynamic ya amer

  Widget _drawDivider(){
    return Container(
      color:Colors.grey ,
      width: double.infinity,
      height:1,
    );
  }

  Column _drawSingleColumnCardTwo(BuildContext context,String title_one,String title_two,Color color) {
    return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage('assets/images/bg21.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4,bottom: 4),
                        child: Container(
                          height:20,
                          width:80 ,
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(title_one,textAlign: TextAlign.center,),
                        ),
                      ),
                      Text(
                        title_two,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(children: <Widget>[
                        Text("15 min"),
                        _emptySizedBox(),
                        Icon(Icons.timer),
                      ],),
                    ],
                  );
  }

  Row _drawSingleRowCardOne() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage('assets/images/bg20.png'),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Global Warming this is very dangerous \nThing reading and writing are the essential  \n",
              textAlign: TextAlign.start,
              maxLines: 4,
            ),
            Row(
              children: <Widget>[
                Text('15 min'),
                _emptySizedBox(),
                Icon(
                  Icons.timer,
                  size: 19,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  SizedBox _emptySizedBox() {
    return SizedBox(
                width: 15,
              );
  }

  Align _topRecentTitles(String title) {
    return Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(color: Colors.black87),
            textAlign: TextAlign.start,
          ),
        ));
  }

  Container _drawHeader(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      //color: Colors.red,
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/images/bg20.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: Transform.translate(
                offset: Offset(0, -50),
                child: Text(
                  "Title ",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
                ),
              )),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Content ya amer , this is the content , ",
              maxLines: 3,
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 21,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

//that is awesome ya amer and every thing is working so good problems will be solved..... let's go know
