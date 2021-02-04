import 'package:flutter/material.dart';

import 'details.dart';

class HeadPhoneScreen extends StatefulWidget {
  @override
  _HeadPhoneScreenState createState() => _HeadPhoneScreenState();
}

class _HeadPhoneScreenState extends State<HeadPhoneScreen> {
  PageController _pageController = PageController();
  double currentPage = 0;
  List<String> _tabData = ["Popular", "Recommended", "New"];
  List<String> _brandName = ["Sony", "JBL", "Bose", "Apple"];
  var selectedBrand = "JBL";
  var selectedFilter = "Popular";


  @override
  void initState() {
    _pageController.addListener((){
      setState(() {
        currentPage = _pageController.page;
      });
    });
    super.initState();
  }
  setSelectedBrand(brand) {
    setState(() {
      selectedBrand = brand;
    });
  }

  setSelectFilter(filter) {
    setState(() {
      selectedFilter = filter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
          Row(children: [
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 2,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              color: Colors.amber.shade200,
            ),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 2,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              color: Colors.white,
            )
          ]),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow.shade200,
                            borderRadius: BorderRadius.circular(9.0)),
                        width: 40,
                        margin: EdgeInsets.only(left: 20.0),
                        height: 40,
                        alignment: Alignment.center,
                        child: IconButton(
                            icon: Icon(
                              Icons.menu,
                              size: 30.0,
                              color: Colors.black,
                            ),
                            onPressed: () => {})),
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
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "Headphones",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Hear Crisp, Clear Audio",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
                Row(
                  children: [
                    RotatedBox(
                      quarterTurns: 3,
                      child: Container(
                        height: 60.0,
                        alignment: Alignment.center,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        child: Center(
                          child: ListView.builder(
                              itemCount: _tabData.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (_, index) =>
                                  AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    curve: Curves.easeIn,
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () =>
                                      {setSelectFilter(_tabData[index])},
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 15,
                                            left: 10,
                                            right: 10,
                                            bottom: 10),
                                        child: Text(
                                          _tabData[index],
                                          style: TextStyle(
                                            color: selectedFilter ==
                                                _tabData[index]
                                                ? Colors.black
                                                : Colors.grey,
                                            fontSize: 18,
                                            letterSpacing: 3,
                                            fontWeight:
                                            selectedFilter == _tabData[index]
                                                ? FontWeight.bold
                                                : FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width - 150,
                                height: 500,
                              ),
                              Container(
                                  child: InkWell(
                                    onTap: () => {

                                    Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Details(imageTag: "assets/sony_headphone.jpg",)),
                                    )
                                  },
                                    child: Hero(
                                      tag: "assets/sony_headphone.jpg",
                                      child: Container(
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width - 150,
                                        height: 400,
                                        margin: EdgeInsets.only(
                                            right: 40, top: 40),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/sony_headphone.jpg")),
                                            borderRadius: BorderRadius.circular(
                                                20),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: 9,
                                                  color: Colors.grey.shade200,
                                                  spreadRadius: 4)
                                            ]),
                                      ),
                                    ),
                                  )),
                              Positioned(
                                  top: 400,
                                  right: 50,
                                  child: Container(
                                    margin: EdgeInsets.only(top: 10),
                                    decoration: ShapeDecoration(
                                        color: Colors.yellow.shade200,
                                        shape: CircleBorder()),
                                    child: IconButton(
                                      onPressed: () => {},
                                      iconSize: 40,
                                      icon: Icon(Icons.add),
                                    ),
                                  )),
                              Positioned(
                                top: 50,
                                right: 50,
                                child: IconButton(
                                  onPressed: () => {},
                                  iconSize: 30,
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            left: 60,
            right: 10,
            top: MediaQuery
                .of(context)
                .size
                .height - 80,
            child: Container(
              height: 40,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: Center(
                child: ListView.builder(
                    itemCount: _brandName.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) =>
                        AnimatedContainer(
                          duration: Duration(milliseconds: 3000),
                          curve: Curves.easeIn,
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () => {setSelectedBrand(_brandName[index])},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, left: 10, right: 10, bottom: 5),
                              child: Text(
                                _brandName[index],
                                style: TextStyle(
                                  color: selectedBrand == _brandName[index]
                                      ? Colors.black
                                      : Colors.grey,
                                  fontSize: 16,
                                  letterSpacing: 3,
                                  fontWeight: selectedBrand == _brandName[index]
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        )),
              ),
            ),
          ),

        ]));
  }
}
