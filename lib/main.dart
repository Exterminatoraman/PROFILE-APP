// @dart=2.9
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(myprofile());
}

class myprofile extends StatelessWidget {
  @override
  launchlink() async{
    final Uri link = Uri.parse("https://www.linkedin.com/in/aman-agrawal-1693ab237/");
    if (await launchUrl(link)) {
      await launchUrl(link);
    } else {
      throw 'Could not launch $link';
    }
  }
  launchgit() async{
    final Uri link = Uri.parse("https://github.com/Exterminatoraman");
    if (await canLaunchUrl(link)) {
      await launchUrl(link,
        universalLinksOnly: true,
      );

    } else {
      throw 'Could not launch $link';
    }
  }
  launchinst() async{
    final Uri link = Uri.parse("https://www.instagram.com/aman_agrawal_777/");
    if (await launchUrl(link)) {
      await launchUrl(link);
    } else {
      throw 'Could not launch $link';
    }
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child:Column(

            children: [
            SizedBox(
              height: 25.0,
            ),
              Center(
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('IMAGES/MY2.jpeg'),
                ),
              ),
              Text(
                'Aman Agrawal',
              style:TextStyle(
                  fontFamily: 'DancingScripts',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,

              )),
              Text(
                'Student',
                  style: TextStyle(
                  fontSize:(20.0),
                  color: Colors.black,
                  )),
            SizedBox(
              height: 100.0,
            ),
            Center(
              child: Container(
                child: Row(

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.phone,
                      size:30,
                        color:Colors.black,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('+917408900766',
                        style: TextStyle(
                        fontSize: 17
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child:Row(
                  children: [
                    Icon(Icons.email_outlined,
                    size:30,
                    color: Colors.black),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text('amanagrawal9876@gmail.com',
                    style: TextStyle(
                      fontSize: 17,
                    ),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(

                children: [
                  Text('Education Qualification-',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                    width: 10.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('1. Class 12 : 91% ',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),),
                      ),
                      Text('2. B.Tech in CSE  ',
                        style: TextStyle(
                        fontSize: 20.0,)),
                    ],
                  )
                ],
              ),
            ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child:Row(
                    children: [
                      IconButton(
                        icon: Icon(FontAwesomeIcons.instagram,
                            size:30,
                            color: Colors.pinkAccent),
                        onPressed:launchinst
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.linkedin,
                            size:30,
                            color: Colors.blue),
                        onPressed: launchlink,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.github,
                            size:30,
                            color: Colors.black),
                        onPressed: launchgit,
                      ),

                     /* RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Aman_Agrawal_777",
                                    style: TextStyle(color: Colors.blue),
                                    recognizer: TapGestureRecognizer()..onTap =  () async{
                                      final Uri url = Uri.parse("https://www.instagram.com/aman_agrawal_777/");
                                      if (await launchUrl(url)) {
                                        await launchUrl(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    }
                                ),
                              ]
                          ))*/
                    ],
                  ),
                ),
              ),
             /* Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child:Row(
                    children: [

                      SizedBox(
                        width: 15.0,
                      ),

                    ],
                  ),
                ),
              ),*/
            /*  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child:Row(
                    children: [

                      SizedBox(
                        width: 15.0,
                      ),

                    ],
                  ),
                ),
              ),*/
            ],
          ),

        ),
      ),
    );
  }
}



