import 'package:bank_app/pages/homepage.dart';
import 'package:bank_app/utilities/colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetoHomePage();
  }

  _navigatetoHomePage() async{
    await Future.delayed(Duration(milliseconds: 3000), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 200),
            child: Center(
              child: Image.asset("images/accesslogo.png"),
            )
          ),
          SizedBox(height: 40,),
          SpinKitWave(
            itemBuilder: (BuildContext context, int index) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: AppColour.mainColor
                ),
              );
           },
          ),
          SizedBox(height: 100,),
          Text("Inizzline v 1.0", style: TextStyle(
            fontSize: 13,
            color: AppColour.mainColor,
          ),)
        ],
      ),
    );
  }
}

