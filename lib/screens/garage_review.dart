import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:uado/screens/garage_details.dart';


class AddGarageReview extends StatefulWidget {
  const AddGarageReview({Key? key}) : super(key: key);


  @override
  State<AddGarageReview> createState() => _AddGarageReviewState();
}

class _AddGarageReviewState extends State<AddGarageReview> {
  double _rating = 3;
  @override
  Widget build(BuildContext context) {
    double avatar_left = MediaQuery.of(context).size.width * 0.4;
    double avatar_width = MediaQuery.of(context).size.width * 0.2;


    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(78, 199, 50, 1),
        elevation: 1.0,
        title: const Text("Review and Rating"),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(
                left: 0.0, right: 0.0, bottom: 10.0),
            child:
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Thank You!", style: TextStyle(color: Color
                      .fromRGBO(78, 199, 50, 1), fontSize: 32,),),
                  const SizedBox(height: 20.0,),
                  const Text("for using our services.", style: TextStyle(color: Color
                      .fromRGBO(78, 199, 50, 1), fontSize: 18,),),

                  const SizedBox(height: 30.0,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Card(
                      elevation: 10.0,
                      child: Column(
                        children: [
                          Stack(
                            children: <Widget>[
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      color: const Color
                                          .fromRGBO(78, 199, 50, 1),
                                    ),
                                    const SizedBox(height: 50),
                                    const Text("Ketan Car Point", style: TextStyle(color: Colors.black, fontSize: 18,),),
                                    const SizedBox(height: 5,),
                                    const Text("Rate this merchant", style: TextStyle(color: Colors.grey, fontSize: 18),),
                                    const SizedBox(height: 20,),
                                    GFRating(
                                      color: const Color.fromRGBO(255,191,27,1),
                                      borderColor: const Color.fromRGBO(255,191,27,1),
                                      value: _rating,
                                      onChanged: (value) {
                                        setState(() {
                                          _rating = value;
                                          print(value);
                                        });
                                      },
                                    ),
                                    const SizedBox(height:20),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          hintText: "Write your review",
                                          border: InputBorder.none,

                                        ),
                                      ),
                                    ),
                                    const SizedBox(height:25),
                                    InkWell(
                                      onTap: (){
                                        //Capture rate and review
                                        Navigator.of(context).pop();
                                      },
                                      child: Container(
                                        height: 60,
                                        color: const Color.fromRGBO(230, 230, 230, 1),
                                        child: Center(
                                          child: TextButton(
                                             onPressed: () { print("Submit"); Navigator.of(context).pop();},
                                            child: const Text("SUBMIT", style: TextStyle(color: Color.fromRGBO(78, 199, 50, 1), fontSize: 18, fontWeight: FontWeight.bold),),
                                          )
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                               Positioned(
                                top: 10,
                                left: avatar_left,
                                child: Card(
                                  elevation: 8.0,
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Center(
                                          child: SizedBox(
                                            height: 80,
                                            width: avatar_width,
                                            child: const Image(
                                              image: AssetImage("assets/images/mechanic.png"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                  // Mechanic List builder
                  // single List item

                  const SizedBox(
                    height: 10.0,
                  ),


                ],
              ),
            )


        ),
      ),
    );
  }
}
