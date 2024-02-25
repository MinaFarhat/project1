import 'package:flutter/material.dart';
import 'package:project1/shared/styes/colors.dart';
import 'package:project1/tes/ne/add_post.dart';
import 'package:project1/tes/s/main_screen.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:google_fonts/google_fonts.dart';

class Promotiomscreen extends StatefulWidget {
  const Promotiomscreen({Key? key}) : super(key: key);

  @override
  State<Promotiomscreen> createState() => _PromotiomscreenState();
}

class _PromotiomscreenState extends State<Promotiomscreen> {
  String? result;
  bool isFinished = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/interests/art.jpg"),
            )
          ),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 25,
                      )),
                  Text(
                    "Promotion Plan",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Spacer(),
                    Padding(
                    padding: EdgeInsets.all(8),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "SKIP",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 70),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 4),
                          blurRadius: 7.0),
                    ],
                  ),
                  child: SwipeableButtonView(
                    buttonText: 'SLIDE TO OPEN PLAN',
                    buttontextstyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                    buttonColor: Colors.white,
                    buttonWidget: Container(
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: defaultColor,
                      ),
                    ),
                    activeColor: defaultColor,
                    isFinished: isFinished,
                    onWaitingProcess: () {
                      Future.delayed(Duration(seconds: 2), () {
                        setState(() {
                          isFinished = true;
                        });
                      });
                    },
                    onFinish: () async {
                      await Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return Addpost();
                      }));
                      setState(() {
                        isFinished = false;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 120),
            ],
          ),
        ),
      ),
    );
  }
}
