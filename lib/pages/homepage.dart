import 'package:bank_app/pages/paymentpage.dart';
import 'package:bank_app/utilities/colours.dart';
import 'package:bank_app/widgets/buttons.dart';
import 'package:bank_app/widgets/imgbills.dart';
import 'package:bank_app/widgets/largebuttons.dart';
import 'package:bank_app/widgets/textsize.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColour.backGroundColor,
      body: Container(
        height: h,
        child: Stack(
          children: [
            _headerSection(),
            _listBills(),
            _payButton(),

          ],
        ),
      ),
    );
  }


  _headerSection() {
    return Container(
      height: 305,
      child: Stack(
        children: [
          _mainBackgroundSection(),
          _curveImageSection(),
          _buttonContain(),
          _textandlogoContainer()
        ],
      ),
    );
  }

  _buttonContain() {
    return Positioned(
      right: 50,
      bottom: 15,
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              barrierColor: Colors.transparent,
              backgroundColor: Colors.transparent,
                context: context, builder: (BuildContext context) {
              return Container(
                height: MediaQuery.of(context).size.height - 240,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                        child: Container(
                          height: MediaQuery.of(context).size.height - 300,
                          width: MediaQuery.of(context).size.width,
                          color: Color(0xFFeef1f4).withOpacity(0.5),
                        )
                    ),
                    Positioned(
                      top: 0,
                      right: 50,
                        child: Container(
                          padding: EdgeInsets.only(top: 5, bottom: 15),
                          height: 200,
                          width: 50,
                          decoration: BoxDecoration(
                            color: AppColour.mainColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppButtons(
                                icon: Icons.cancel_outlined,
                                textColor: Colors.white,
                                text: "Cancel",
                                onTap: () {Navigator.pop(context);},
                              ),
                              AppButtons(
                                icon: Icons.add,
                                iconColor: AppColour.mainColor,
                                textColor: Colors.white,
                                backgroundColor: Colors.white,
                                text: "Add Bill",
                                onTap: () {},
                              ),
                              AppButtons(
                                icon: Icons.history,
                                iconColor: AppColour.mainColor,
                                textColor: Colors.white,
                                backgroundColor: Colors.white,
                                text: "History",
                                onTap: () {},
                              ),
                            ],
                          ),
                        )
                    )
                  ],
                ),
              );
            });
          },
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/lines.png')
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  offset: Offset(0,1),
                  color: Color(0xFF11324d).withOpacity(0.2),
                )
              ]
            ),
          ),
        )
    );
  }

  _mainBackgroundSection() {
    return Positioned(
      bottom: 10,
        left: 0,
        child: Container(
          height: 295,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('images/background.png')
            )
          ),
        )
    );
  }

  _curveImageSection() {
    return Positioned(
        left: 0,
        right: -2,
        bottom: 10,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/curve.png')
              )
          ),
        )
    );
  }

  _listBills() {
    return Positioned(
      top: 320,
        left: 0,
        right: 0,
        bottom: 0,
        child: MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: ListView.builder(
            itemCount: 1,
              itemBuilder: (_, index) {
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, right: 20),
                      height: 100,
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFFd8dbe0),
                                offset: Offset(1,1),
                                blurRadius: 20,
                                spreadRadius: 10
                            )
                          ]
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container (
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            width: 2,
                                            color: Color(0xFF192C49),
                                          ),
                                          image: DecorationImage(
                                            fit: BoxFit.contain,
                                            image: AssetImage("images/phcn.png"),
                                          )
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("PHCN Nigeria", style: TextStyle(
                                            fontSize: 15, color: AppColour.mainColor,
                                            fontWeight: FontWeight.bold
                                        ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text("ID: 36565532", style: TextStyle(
                                            fontSize: 14, color: AppColour.idColor,
                                            fontWeight: FontWeight.w500
                                        ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedText(text: "Auto pay on 19th Oct 22", color: AppColour.green),
                                SizedBox(
                                  height: 3,)
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: AppColour.selectBackgroundColor,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Select", style: TextStyle(
                                            fontSize: 14, color: AppColour.selectColor
                                        ),
                                        ),
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Text(
                                      "₦87,850.29", style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900,
                                        color: AppColour.mainColor
                                    ),
                                    ),
                                    Text(
                                      "Due in 3 days", style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        color: AppColour.idColor
                                    ),
                                    ),
                                    SizedBox(height: 10,)
                                  ],
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  height: 35,
                                  width: 5,
                                  decoration: BoxDecoration(
                                      color: AppColour.halfOval,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        bottomLeft: Radius.circular(30),
                                      )
                                  ),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, right: 20),
                      height: 100,
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFFd8dbe0),
                                offset: Offset(1,1),
                                blurRadius: 20,
                                spreadRadius: 10
                            )
                          ]
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: 10, left: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container (
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            width: 2,
                                            color: Color(0xFF192C49),
                                          ),
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage("images/dstv.png"),
                                          )
                                      ),
                                    ),
                                    SizedBox(width: 15,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("DSTv Nigeria", style: TextStyle(
                                            fontSize: 15, color: AppColour.mainColor,
                                            fontWeight: FontWeight.bold
                                        ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text("ID: 669855", style: TextStyle(
                                            fontSize: 14, color: AppColour.idColor,
                                            fontWeight: FontWeight.w500
                                        ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedText(text: "Payment due in two weeks", color: AppColour.green),
                                SizedBox(
                                  height: 3,)
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: AppColour.selectBackgroundColor,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Select", style: TextStyle(
                                            fontSize: 14, color: AppColour.selectColor
                                        ),
                                        ),
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Text(
                                      "₦21,000.00", style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900,
                                        color: AppColour.mainColor
                                    ),
                                    ),
                                    Text(
                                      "Due in 3 days", style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        color: AppColour.idColor
                                    ),
                                    ),
                                    SizedBox(height: 10,)
                                  ],
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  height: 35,
                                  width: 5,
                                  decoration: BoxDecoration(
                                      color: AppColour.halfOval,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        bottomLeft: Radius.circular(30),
                                      )
                                  ),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, right: 20),
                      height: 100,
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFFd8dbe0),
                                offset: Offset(1,1),
                                blurRadius: 20,
                                spreadRadius: 10
                            )
                          ]
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: 10, left: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container (
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            width: 2,
                                            color: Color(0xFF192C49),
                                          ),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage("images/net.png"),
                                          )
                                      ),
                                    ),
                                    SizedBox(width: 15,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("NetFlix Nigeria", style: TextStyle(
                                            fontSize: 15, color: AppColour.mainColor,
                                            fontWeight: FontWeight.bold
                                        ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text("ini@gmail.com", style: TextStyle(
                                            fontSize: 14, color: AppColour.idColor,
                                            fontWeight: FontWeight.w500
                                        ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedText(text: "Auto pay on the 22nd Oct 22", color: AppColour.green),
                                SizedBox(
                                  height: 3,)
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: AppColour.selectBackgroundColor,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Select", style: TextStyle(
                                            fontSize: 14, color: AppColour.selectColor
                                        ),
                                        ),
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Text(
                                      "₦4,400.00", style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900,
                                        color: AppColour.mainColor
                                    ),
                                    ),
                                    Text(
                                      "Due in 3 days", style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        color: AppColour.idColor
                                    ),
                                    ),
                                    SizedBox(height: 10,)
                                  ],
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  height: 35,
                                  width: 5,
                                  decoration: BoxDecoration(
                                      color: AppColour.halfOval,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        bottomLeft: Radius.circular(30),
                                      )
                                  ),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, right: 20),
                      height: 100,
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFFd8dbe0),
                                offset: Offset(1,1),
                                blurRadius: 20,
                                spreadRadius: 10
                            )
                          ]
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: 10, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container (
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            width: 2,
                                            color: Color(0xFF192C49),
                                          ),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage("images/mtn.png"),
                                          )
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("MTN Data Bundle", style: TextStyle(
                                            fontSize: 15, color: AppColour.mainColor,
                                            fontWeight: FontWeight.bold
                                        ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text("ID: MTN_5G_5562", style: TextStyle(
                                            fontSize: 14, color: AppColour.idColor,
                                            fontWeight: FontWeight.w500
                                        ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedText(text: "Auto pay on the 30th Oct 22", color: AppColour.green),
                                SizedBox(
                                  height: 3,)
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: AppColour.selectBackgroundColor,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Select", style: TextStyle(
                                            fontSize: 14, color: AppColour.selectColor
                                        ),
                                        ),
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Text(
                                      "₦90,000.00", style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900,
                                        color: AppColour.mainColor
                                    ),
                                    ),
                                    Text(
                                      "Due in 3 days", style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        color: AppColour.idColor
                                    ),
                                    ),
                                    SizedBox(height: 10,)
                                  ],
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  height: 35,
                                  width: 5,
                                  decoration: BoxDecoration(
                                      color: AppColour.halfOval,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        bottomLeft: Radius.circular(30),
                                      )
                                  ),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, right: 20),
                      height: 100,
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xFFd8dbe0),
                                offset: Offset(1,1),
                                blurRadius: 20,
                                spreadRadius: 10
                            )
                          ]
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: 10, left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container (
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            width: 2,
                                            color: Color(0xFF192C49),
                                          ),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage("images/iphone.png"),
                                          )
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("iPhone 14 pro max", style: TextStyle(
                                            fontSize: 15, color: AppColour.mainColor,
                                            fontWeight: FontWeight.bold
                                        ),
                                        ),
                                        SizedBox(height: 5,),
                                        Text("ini@gmail.com", style: TextStyle(
                                            fontSize: 14, color: AppColour.idColor,
                                            fontWeight: FontWeight.w500
                                        ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedText(text: "Order Successful", color: AppColour.green),
                                SizedBox(
                                  height: 3,)
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: AppColour.selectBackgroundColor,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Select", style: TextStyle(
                                            fontSize: 14, color: AppColour.selectColor
                                        ),
                                        ),
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Text(
                                      "₦990,000.00", style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900,
                                        color: AppColour.mainColor
                                    ),
                                    ),
                                    Text(
                                      "Due in 3 days", style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                        color: AppColour.idColor
                                    ),
                                    ),
                                    SizedBox(height: 10,)
                                  ],
                                ),
                                SizedBox(width: 5,),
                                Container(
                                  height: 35,
                                  width: 5,
                                  decoration: BoxDecoration(
                                      color: AppColour.halfOval,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        bottomLeft: Radius.circular(30),
                                      )
                                  ),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
        )
    );
  }

  _payButton() {
    return Positioned(
      bottom: 20,
        child: AppLargeButton(
          text: "Pay all bills",
          textColor: Colors.white,
          onTap: (){
             Get.to(()=>PaymentPage());
          },
        )
    );
  }

  _textandlogoContainer() {
    return Stack(
      children: [
        Positioned(
          top: 50,
          child: Container(
              child: Opacity(
                  opacity: 0.5,
                  child: ClipRRect(
                      child: Image(
                        width: 250,
                        image: AssetImage("images/access.png"),
                      )
                  )
              )),
        ),
        Positioned(
          top: 70,
          child: Container(
              child: Opacity(
                  opacity: 0.5,
                  child: ClipRRect(
                      child: Image(
                        width: 200,
                        image: AssetImage("images/accesslogo.png"),
                      )
                  )
              )),
        ),
        Positioned(
            top: 140,
            right: 31,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "SAVINGS ACCOUNT:", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
              ),
            )
        ),
        Positioned(
            top: 155,
            right: 32,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "0111373045", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
              ),
            )
        ),
        Positioned(
            top: 180,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Account Balance", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
              ),
            )
        ),
        Positioned(
            top: 195,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "₦ 9,461,221.70", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 23
              ),
              ),
            )
        ),
        Positioned(
            top: 225,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Book Balance: ₦ 9,461,321.70", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  letterSpacing: 0.2
              ),
              ),
            )
        ),
        Positioned(
            top: 255,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "My Bills", style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 23,

              ),
              ),
            )
        ),
      ],
    );
  }

}
