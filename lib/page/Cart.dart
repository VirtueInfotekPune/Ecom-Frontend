import 'package:flutter/material.dart';
import 'package:uispeed_grocery_shop/model/food.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          child: dummyFoods!.isEmpty
              ? Container(
              child: Center(
                  child: Center(
                    child: Column(children: [
//CircularProgressIndicator(backgroundColor: Colors.green),
                      SizedBox(height: size.height * 0.4),
                      Text("Your cart is empty ", style: TextStyle(fontSize: 25))
                    ]),
                  )))
              : ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: dummyFoods!.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    child: GestureDetector(
                      onTap: () {},
                      child: Card(
                        child: Container(
                          height: size.height * 0.21,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 135,
                                    height: 130,
                                    child: Row(
                                      children: [
                                        Container(
                                            height: 100,
                                            width: 100,
                                            margin: EdgeInsets.only(
                                              left: 20,
                                            ),
                                            child: Image(
                                                image: AssetImage(
                                                    dummyFoods![index].image,)),),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 10),
                                      Row(children: [
                                        Text(
                                          dummyFoods![index].name
                                              .toString(),
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          dummyFoods![index].price as String,
                                          style:
                                          TextStyle(color: Colors.black45),
                                        ),
                                        SizedBox(width: 50),
                                      ]),

                                      Container(
                                          margin: EdgeInsets.only(right: 100),
                                          child: Text(
                                            dummyFoods![index].price as String,
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          )),
                                      SizedBox(height: 10),
                                      Row(children: [
                                        Container(
                                            margin: EdgeInsets.only(right: 0),
                                            child: Text(
                                              dummyFoods![index].price
                                                  .toString(),
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            )),

                                        Text("  X  ",
                                            style: TextStyle(fontSize: 12)),
                                        Container(
                                            margin: EdgeInsets.only(right: 0),
                                            child: Text(
                                              dummyFoods![index].price
                                                  .toString(),
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            )),

                                        Container(
                                            margin: EdgeInsets.only(right: 0),
                                            child: Text(
                                              "       ₹ ${dummyFoods![index].price.toString()}",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                        SizedBox(width: size.width * 0.14),

//Spacer(),

                                        Container(
                                          //alignment:Alignment.centerRight,
                                            child: GestureDetector(
                                                onTap: () {
                                                },
                                                child: Icon(Icons.close,
                                                    color: Colors.green))),
                                      ]),
                                      SizedBox(height: 10),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ));
              })),
    );
  }
}