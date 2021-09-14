import 'package:flutter/material.dart';
import 'package:gopay/widgets/widgets.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: width,
            height: height / 3.75,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    height: height / 5,
                    width: width,
                    color: Color(0xff605DED),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: height / 7,
                    width: height / 7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: const Offset(
                            0.0,
                            2.0,
                          ),
                          blurRadius: 4.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                      ],
                    ),
                    child: Center(
                      child: Image(
                        image: AssetImage("assets/credit-cards-payment.png"),
                        height: 80,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width,
            height: height / 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome to',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    )),
                Text('goPay',
                    style: TextStyle(
                      color: Color(0xff605DED),
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                    ))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                WelcomeOptions(
                  width: width,
                  height: height,
                  iamge: Image(
                    image: AssetImage("assets/pie-chart.png"),
                    height: 36,
                  ),
                  title: 'Track Personal Expenses',
                  desc: 'Stay up to date with every expense you make.',
                ),
                WelcomeOptions(
                  width: width,
                  height: height,
                  iamge: Image(
                    image: AssetImage("assets/bill.png"),
                    height: 36,
                  ),
                  title: 'Split Bills',
                  desc: 'Split bills with your friends and family.',
                ),
                WelcomeOptions(
                  width: width,
                  height: height,
                  iamge: Image(
                    image: AssetImage("assets/payment-method.png"),
                    height: 36,
                  ),
                  title: 'Make Payments',
                  desc: 'Pay and receive money easily and instantly.',
                ),
              ],
            ),
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: 'By continuing you agree to our ',
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                    children: [
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(text: ' and '),
                      TextSpan(
                        text: 'T\$Cs',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: height / 15,
                width: width,
                decoration: BoxDecoration(
                  color: Color(0xff605DED),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextButton(
                  child: Text(
                    'GET STARTED',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
