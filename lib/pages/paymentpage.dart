import 'package:bank_app/pages/homepage.dart';
import 'package:bank_app/utilities/colours.dart';
import 'package:bank_app/widgets/buttons.dart';
import 'package:bank_app/widgets/largebuttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 70),
        height: h,
        width: w,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/paymentbackground.png')
            )
        ),
        child: Column(
          children: [
            Container(
              height: h*0.14,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.contain,
                    image: AssetImage("images/good.png",)
                )
              ),
            ),
            Text("Transaction Successful",
              style: TextStyle(
              fontSize: 25,
              color: AppColour.mainColor,
              fontWeight: FontWeight.bold
            ),
            ),
            Text("Payment completed for 2 bills",
              style: TextStyle(
                  fontSize: 15,
                  color: AppColour.idColor,
                  fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(height: h*0.04,),
            Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (_, index) {
                    return Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10, left: 10, bottom: 5),
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.green
                                ),
                                child: Icon(Icons.done, color: Colors.white,),
                              ),
                              SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("PHCN Nigeria",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: AppColour.mainColor,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text("ID: 36565532",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColour.idColor,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 30, ),
                              Column(
                                children: [
                                  Text(
                                    "",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: AppColour.mainColor,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "₦87,850.29",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: AppColour.mainColor,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Divider(thickness: 2, color: Colors.grey.withOpacity(0.5),),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 5, left: 10, bottom: 5),
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.green
                                ),
                                child: Icon(Icons.done, color: Colors.white,),
                              ),
                              SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("DSTv Premium",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: AppColour.mainColor,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text("ID: 565532",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColour.idColor,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 22, ),
                              Column(
                                children: [
                                  Text(
                                    "",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: AppColour.mainColor,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "₦21,000.00",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: AppColour.mainColor,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Divider(thickness: 2, color: Colors.grey.withOpacity(0.5),),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 5, left: 10, bottom: 5),
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.green
                                ),
                                child: Icon(Icons.done, color: Colors.white,),
                              ),
                              SizedBox(width: 5,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("NetFlix",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: AppColour.mainColor,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text("ini@gmail.com",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColour.idColor,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 30, ),
                              Column(
                                children: [
                                  Text(
                                    "",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: AppColour.mainColor,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "₦4,400.00",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: AppColour.mainColor,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: h*0.06,),
            Column(
              children: [
                Text("Total Amount", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColour.idColor,
                    fontSize: 15
                ),
                ),
                SizedBox(height: 10,),
                Text("₦113,250.29", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColour.mainColor,
                    fontSize: 25
                ),
                ),
              ],
            ),
            SizedBox(height: h*0.15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppButtons(icon: Icons.share, onTap: () {}, text: "Share",),
                SizedBox(width: 80,),
                AppButtons(icon: Icons.print_outlined, onTap: () {}, text: "Download",),
              ],
            ),
            SizedBox(height: h*0.02,),
            AppLargeButton(text:
            "Done",
              backgroundColor: Colors.white,
              textColor: AppColour.mainColor,
              onTap: (){Get.to(()=>HomePage());},
            )
          ],
        ),
      ),
    );
  }
}
