import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.purple,
              Colors.blue,
            ]
        ),
      ),
       child: Scaffold(
         backgroundColor: Colors.transparent,
         body: _page(),
        ),
    );
  }

  Widget _page() {
    // Future openBrowserURL({
    //   required String url,
    //   bool inApp = false,
    // }) async {
    //   if (await canLaunchUrl(url as Uri)) {
    //     await launch(
    //       url,
    //       forceSafariVC: inApp,
    //       forceWebView: inApp,
    //       enableJavaScript: true,
    //     );
    //   }
    //}
    return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _welcomeText(),
        SizedBox(
          height: 50,
        ),
        _icon(),
        SizedBox(
          height: 50,
        ),
        _loginBtn(),
        SizedBox(
          height: 20,
        ),
        _extraText(),
        _signUp(),
      ],
    ),
    );
  }

  Widget _welcomeText() {
    return Text(
      "WELCOME !!!",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _icon() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        shape: BoxShape.circle
      ),
      child: Icon(
        Icons.person,
        color: Colors.white,
        size: 120,
      ),
    );
  }

  Widget _loginBtn() {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
      child: Container(
        child: ElevatedButton(
          onPressed: () {
            //launchURL('https://www.nedux.tech/login');
           Navigator.pushNamed(context, '/login');
          },
          child: SizedBox(
            width: double.infinity,
            child: Text(
              "LOGIN",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),

          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            primary: Colors.white,
            onPrimary: Colors.purple,
            padding: EdgeInsets.symmetric(vertical: 10),
          ),
        ),
      ),
    );
  }

  Widget _extraText() {
    return Text(
      "Don't have an account yet? Register here.",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 10,
        color: Colors.white,
      ),
    );
  }

  Widget _signUp() {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
      child: Container(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/sign_up');
          },
          // onPressed: ()
          // async{
          //   //launchURL('https://www.nedux.tech/register');
          //   final url = "https://www.nedux.tech/register";
          //
          //   if(await canLaunchUrl(url as Uri)) {
          //     await launch(
          //       url,
          //       forceSafariVC: true,
          //       forceWebView: true,
          //       enableJavaScript: true,
          //     );
          //
          //   }
          // },
          child: SizedBox(
            width: double.infinity,
            child: Text(
              "SIGN UP",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            primary: Colors.white,
            onPrimary: Colors.purple,
            padding: EdgeInsets.symmetric(vertical: 10),
          ),
        ),
      ),
    );
  }

  // void launchURL({required String url}) async{
  //   if (await canLaunchUrl(url)) {
  //     await launchUrl(url);
  //   }else {
  //     throw "Could not launch $url";
  //   }
  // }
}

