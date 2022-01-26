import 'package:flutter/material.dart';

import 'package:project/textreader.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

      return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home:  const PrivacyPage(),
          //routes: <String, WidgetBuilder>{
            //'/PrivercyPage' : (BuildContext context)=> const PrivercyPage(),
            //'/TermsPage' :   (BuildContext context)=> const TermsPage(),
            //'/SecurityPage': (BuildContext context) => const SecurityPage(),
            //'/FqaPage' : (BuildContext context)=>const FqaPage(),
         // });
      );
    }

  }

class PrivacyPage extends StatefulWidget {
  const PrivacyPage({Key? key}) : super(key: key);

  @override
  _PrivacyPageState createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:
   // SingleChildScrollView(
     // child:
      Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[

                     const Expanded(flex: 8,
                        child: TextReader('lib/assets/text/privacy.txt')),


             Expanded(flex: 2,
               child: Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Row(children: [
                  Expanded(flex: 3,

                    child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0),
                      color: Colors.white,
                    border: Border.all(color: Colors.black)
                    ),

                      child: Column(
                        children: const [
                          Center(
                            child: Text('Previous',style: TextStyle(fontWeight: FontWeight.normal,
                            fontSize: 13),),
                          ),
                          Text(" << Guidelines and Policies ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold
                              ,color: Colors.redAccent),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30,
                    width: 60,
                  ),



                  Expanded(flex: 3,
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0),
                        color: Colors.white,
                          border: Border.all(color: Colors.black)
                      ),

                        child: Column(
                          children: const [
                            Center(
                              child: Text('Next',style: TextStyle(fontWeight: FontWeight.normal,
                                  fontSize: 13),),
                            ),
                            Center(child: Text("Terms and Service >>  ",style:
                            TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.redAccent),))
                          ],
                        ),
                      ),
                  ),


            ],

                 // gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                  //crossAxisCount: 2,
                  //crossAxisSpacing: 20,
            ),
    ),
               ),
            // ),




    ]
    )
   // )
      );
  }

}


