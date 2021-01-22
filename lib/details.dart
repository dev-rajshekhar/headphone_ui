import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Details extends StatefulWidget {
  final String imageTag;

  const Details({Key key, this.imageTag}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  var headPhoneDetails =
      "Sony noise cancelling in-ear earbuds and earphones are perfect for running, gym, sports and other activities. Get Sony earphones and enjoy music on your next run. ... 4Features, Specification, weight & price are subject to change without prior ...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        actions: [
          IconButton(
              icon: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/profile.jpeg")),
                    borderRadius: BorderRadius.circular(9)),
              ),
              onPressed: () => {})
        ],
        title: Text(
          "HeadPhones",
          style: TextStyle(
              color: Colors.black,
              letterSpacing: 2,
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.amber.shade200,
        leading: Container(
            height: 40,
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                color: Colors.yellow.shade200,
                borderRadius: BorderRadius.circular(9.0)),
            alignment: Alignment.center,
            child: IconButton(
                iconSize: 30,
                alignment: Alignment.center,
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                })),
      ),
      body: Container(
        color: Colors.amber.shade200,
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Sony Headphone",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "4.5",
                      style: TextStyle(color: Colors.black),
                    ),
                    RatingBar.builder(
                      itemSize: 25.0,
                      tapOnlyMode: false,
                      ignoreGestures: true,
                      initialRating: 4.5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 150,
                              ),
                              Text(
                                headPhoneDetails,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text(
                                "\$50",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20,
                                ),

                              ),
                              SizedBox(height: 40,),
                              RaisedButton(
                                color: Colors.amber.shade200,
                                onPressed: () {

                                },
                                child: const Text('Buy', style: TextStyle(fontSize: 20,color: Colors.black)),
                              )
                            ],
                          ),
                        ),
                        margin: EdgeInsets.only(top: 70),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                    Positioned(
                      left: 100,
                      right: 100,
                      child: Hero(
                        tag: "assets/sony_headphone.jpg",
                        child: Image(
                          fit: BoxFit.contain,
                          image: AssetImage("assets/sony_headphone.jpg"),
                          height: 200,
                          width: 200,
                        ),
                      ),
                    ),


                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
