import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          child: Column(
            children: <Widget>[
              _CardHeader(),
              _CardBody(),
              _CardFooter(),
            ],
          ),
        );
      },
      itemCount: 10,
    );
  }

  Widget _CardHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CircleAvatar(
            backgroundColor: Colors.black87,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("christen Ali"),
            SizedBox(
              height: 4,
            ),
            Text("mohamed amer"),
          ],
        ),
        Text("@gmail.com"),
      ],
    );
  }

  Widget _CardBody() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
          'what is the coming next ua amer what is the coming next ua amer what is the coming next ua amer what is the coming next ua amer '),
    );
  }

  Widget _CardFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.repeat),
              color: Colors.redAccent,
            ),
            Text("25")
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Row(
            children: <Widget>[
              Text("Check",style: _textStyle,),
              SizedBox(width:30,),
              Text("Update",style: _textStyle,),
            ],
          ),
        ),
      ],
    );
  }

TextStyle _textStyle=TextStyle(
  color: Colors.deepOrange ,
  fontSize: 18 ,
);


} //the end of the class ua amer
